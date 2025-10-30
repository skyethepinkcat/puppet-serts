# frozen_string_literal: true

require 'spec_helper'

describe 'serts::autopair' do
  let(:title) { 'test.example.com' }
  let(:pre_condition) { 'include serts' }

  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      context 'with default parameters' do
        it { is_expected.to compile.with_all_deps }
        it { is_expected.to contain_letsencrypt__certonly('test.example.com') }

        it do
          is_expected.to contain_letsencrypt__certonly('test.example.com').with(
            'ensure' => 'present',
            'domains' => ['test.example.com'],
            'manage_cron' => true,
            'cron_output' => nil,
          )
        end
      end

      context 'with ensure absent' do
        let(:params) { { ensure: 'absent' } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_letsencrypt__certonly('test.example.com').with(
            'ensure' => 'absent',
          )
        end
      end

      context 'with custom fqdn' do
        let(:params) { { fqdn: 'custom.example.com' } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_letsencrypt__certonly('custom.example.com').with(
            'domains' => ['custom.example.com'],
          )
        end
      end

      context 'with alt_names' do
        let(:params) { { alt_names: ['alt1.example.com', 'alt2.example.com'] } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_letsencrypt__certonly('test.example.com').with(
            'domains' => ['test.example.com', 'alt1.example.com', 'alt2.example.com'],
          )
        end
      end

      context 'with manage_cron false' do
        let(:params) { { manage_cron: false } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_letsencrypt__certonly('test.example.com').with(
            'manage_cron' => false,
          )
        end
      end

      context 'with custom certname' do
        let(:params) { { certname: 'custom-cert' } }

        it { is_expected.to compile.with_all_deps }
        it { is_expected.to contain_letsencrypt__certonly('custom-cert') }
      end

      context 'with cron_output log' do
        let(:params) { { cron_output: 'log' } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_letsencrypt__certonly('test.example.com').with(
            'cron_output' => 'log',
          )
        end
      end

      context 'when fqdn matches system fqdn' do
        let(:title) { 'server.example.com' }
        let(:pre_condition) do
          <<-PUPPET
            class { 'serts':
              alt_names => ['www.example.com', 'mail.example.com']
            }
          PUPPET
        end

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_letsencrypt__certonly('server.example.com').with(
            'domains' => ['server.example.com', 'www.example.com', 'mail.example.com'],
          )
        end
      end

      context 'when title has no dot (hostname only)' do
        let(:title) { 'testhost' }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_letsencrypt__certonly('testhost.example.com').with(
            'domains' => ['testhost.example.com'],
          )
        end
      end
    end
  end
end
