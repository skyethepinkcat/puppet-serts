# frozen_string_literal: true

require 'spec_helper'

describe 'serts::certpair' do
  let(:title) { 'example.com' }
  let(:pre_condition) { 'include serts' }

  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      context 'with default parameters' do
        it { is_expected.to compile.with_all_deps }

        it 'creates autopair resource' do
          is_expected.to contain_serts__autopair('example.com').with(
            ensure: 'present',
            fqdn: 'example.com',
            alt_names: [],
          )
        end

        it 'creates cert resource' do
          is_expected.to contain_serts__cert('example.com').with(
            ensure: 'present',
            owner: 'root',
            group: 'root',
            filename: nil,
            directory: nil,
            exclude_filetype: false,
            server_hostname: true,
            mode: '0644',
            fqdn: 'example.com',
            fullchain_cert: false,
          )
        end

        it 'creates key resource' do
          is_expected.to contain_serts__key('example.com').with(
            ensure: 'present',
            fqdn: 'example.com',
            owner: 'root',
            group: 'root',
            filename: nil,
            directory: nil,
            exclude_filetype: false,
            server_hostname: true,
            mode: '0600',
          )
        end
      end

      context 'with custom owner and group' do
        let(:params) { { owner: 'nginx', group: 'nginx' } }

        it 'passes custom ownership to cert and key resources' do
          is_expected.to contain_serts__cert('example.com').with(
            owner: 'nginx',
            group: 'nginx',
          )
          is_expected.to contain_serts__key('example.com').with(
            owner: 'nginx',
            group: 'nginx',
          )
        end
      end

      context 'with custom directories' do
        let(:params) do
          {
            cert_directory: '/custom/certs',
            key_directory: '/custom/keys'
          }
        end

        it 'passes custom directories to cert and key resources' do
          is_expected.to contain_serts__cert('example.com').with(
            directory: '/custom/certs',
          )
          is_expected.to contain_serts__key('example.com').with(
            directory: '/custom/keys',
          )
        end
      end

      context 'with custom filenames' do
        let(:params) do
          {
            cert_filename: 'custom.crt',
            key_filename: 'custom.key'
          }
        end

        it 'passes custom filenames to cert and key resources' do
          is_expected.to contain_serts__cert('example.com').with(
            filename: 'custom.crt',
          )
          is_expected.to contain_serts__key('example.com').with(
            filename: 'custom.key',
          )
        end
      end

      context 'with fullchain_cert enabled' do
        let(:params) { { fullchain_cert: true } }

        it 'enables fullchain cert for certificate resource' do
          is_expected.to contain_serts__cert('example.com').with(
            fullchain_cert: true,
          )
        end
      end

      context 'with alt_names' do
        let(:params) { { alt_names: ['www.example.com', 'api.example.com'] } }

        it 'passes alt_names to autopair resource' do
          is_expected.to contain_serts__autopair('example.com').with(
            alt_names: ['www.example.com', 'api.example.com'],
          )
        end
      end

      context 'with custom file modes' do
        let(:params) do
          {
            cert_mode: '0640',
            key_mode: '0600'
          }
        end

        it 'passes custom modes to cert and key resources' do
          is_expected.to contain_serts__cert('example.com').with(
            mode: '0640',
          )
          is_expected.to contain_serts__key('example.com').with(
            mode: '0600',
          )
        end
      end

      context 'with exclude_filetype enabled' do
        let(:params) { { exclude_filetype: true } }

        it 'passes exclude_filetype to cert and key resources' do
          is_expected.to contain_serts__cert('example.com').with(
            exclude_filetype: true,
          )
          is_expected.to contain_serts__key('example.com').with(
            exclude_filetype: true,
          )
        end
      end

      context 'with server_hostname disabled' do
        let(:params) { { server_hostname: false } }

        it 'passes server_hostname setting to cert and key resources' do
          is_expected.to contain_serts__cert('example.com').with(
            server_hostname: false,
          )
          is_expected.to contain_serts__key('example.com').with(
            server_hostname: false,
          )
        end
      end

      context 'with ensure absent' do
        let(:params) { { ensure: 'absent' } }

        it 'sets ensure absent on all resources' do
          is_expected.to contain_serts__autopair('example.com').with(
            ensure: 'absent',
          )
          is_expected.to contain_serts__cert('example.com').with(
            ensure: 'absent',
          )
          is_expected.to contain_serts__key('example.com').with(
            ensure: 'absent',
          )
        end
      end

      context 'with title without domain and networking facts' do
        let(:title) { 'myhost' }
        let(:facts) { os_facts.merge({ networking: { domain: 'example.com' } }) }

        it 'appends domain to create FQDN for autopair' do
          is_expected.to contain_serts__autopair('myhost.example.com').with(
            fqdn: 'myhost.example.com',
          )
        end

        it 'passes FQDN to cert and key resources' do
          is_expected.to contain_serts__cert('myhost').with(
            fqdn: 'myhost.example.com',
          )
          is_expected.to contain_serts__key('myhost').with(
            fqdn: 'myhost.example.com',
          )
        end
      end

      context 'when autopair resource already exists' do
        let(:pre_condition) do
          <<-PUPPET
            include serts
            serts::autopair { 'example.com': }
          PUPPET
        end

        it 'does not create duplicate autopair resource' do
          is_expected.to contain_serts__autopair('example.com')
        end

        it 'shows warning about existing autopair resource' do
          is_expected.to compile
        end

        context 'with ignore_autopair_warning enabled' do
          let(:params) { { ignore_autopair_warning: true } }

          it 'does not show warning' do
            is_expected.to compile
          end
        end
      end
    end
  end
end
