# frozen_string_literal: true

require 'spec_helper'

describe 'serts::autopair' do
  let(:title) { 'example.com' }
  let(:pre_condition) { 'include serts' }

  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts.merge({ networking: { domain: 'example.com', fqdn: 'server.example.com' } }) }

      context 'with default parameters' do
        it { is_expected.to compile.with_all_deps }

        it 'creates letsencrypt certonly resource' do
          is_expected.to contain_letsencrypt__certonly('example.com').with(
            ensure: 'present',
            domains: ['example.com'],
            manage_cron: true,
            cron_output: nil,
          )
        end
      end

      context 'with custom alt_names' do
        let(:params) { { alt_names: ['www.example.com', 'api.example.com'] } }

        it 'includes alt_names in domains list' do
          is_expected.to contain_letsencrypt__certonly('example.com').with(
            domains: ['example.com', 'www.example.com', 'api.example.com'],
          )
        end
      end

      context 'with ensure absent' do
        let(:params) { { ensure: 'absent' } }

        it 'sets ensure absent on letsencrypt certonly resource' do
          is_expected.to contain_letsencrypt__certonly('example.com').with(
            ensure: 'absent',
          )
        end
      end

      context 'with manage_cron disabled' do
        let(:params) { { manage_cron: false } }

        it 'disables cron management' do
          is_expected.to contain_letsencrypt__certonly('example.com').with(
            manage_cron: false,
          )
        end
      end

      context 'with title without domain and networking facts' do
        let(:title) { 'myhost' }
        let(:facts) { os_facts.merge({ networking: { domain: 'example.com', fqdn: 'server.example.com' } }) }

        it 'appends domain to create FQDN' do
          is_expected.to contain_letsencrypt__certonly('myhost.example.com').with(
            domains: ['myhost.example.com'],
          )
        end
      end

      context 'when FQDN matches system FQDN' do
        let(:facts) { os_facts.merge({ networking: { domain: 'example.com', fqdn: 'example.com' } }) }
        let(:pre_condition) do
          <<-PUPPET
            class { 'serts':
              alt_names => ['www.example.com', 'mail.example.com']
            }
          PUPPET
        end

        it 'includes system alt_names from hiera' do
          is_expected.to contain_letsencrypt__certonly('example.com').with(
            domains: ['example.com', 'www.example.com', 'mail.example.com'],
          )
        end

        context 'with additional alt_names parameter' do
          let(:params) { { alt_names: ['api.example.com'] } }

          it 'combines system alt_names with parameter alt_names' do
            is_expected.to contain_letsencrypt__certonly('example.com').with(
              domains: ['example.com', 'api.example.com', 'www.example.com', 'mail.example.com'],
            )
          end
        end
      end

      context 'when FQDN does not match system FQDN' do
        let(:facts) { os_facts.merge({ networking: { domain: 'example.com', fqdn: 'server.example.com' } }) }
        let(:pre_condition) do
          <<-PUPPET
            class { 'serts':
              alt_names => ['www.example.com', 'mail.example.com']
            }
          PUPPET
        end

        it 'does not include system alt_names' do
          is_expected.to contain_letsencrypt__certonly('example.com').with(
            domains: ['example.com'],
          )
        end
      end

      context 'when letsencrypt certonly resource already exists' do
        let(:pre_condition) do
          <<-PUPPET
            include serts
            letsencrypt::certonly { 'example.com':
              domains => ['example.com'],
            }
          PUPPET
        end

        it 'does not create duplicate letsencrypt certonly resource' do
          is_expected.to contain_letsencrypt__certonly('example.com')
        end
      end

      context 'with custom domain parameter' do
        let(:params) { { domain: 'custom.com' } }
        let(:facts) { os_facts.merge({ networking: { domain: 'example.com', fqdn: 'server.example.com' } }) }

        it 'still uses the FQDN logic correctly' do
          is_expected.to contain_letsencrypt__certonly('example.com').with(
            domains: ['example.com'],
          )
        end
      end
    end
  end
end
