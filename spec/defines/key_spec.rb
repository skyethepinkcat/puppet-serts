# frozen_string_literal: true

require 'spec_helper'

describe 'serts::key' do
  let(:title) { 'example.com' }
  let(:pre_condition) { 'include serts' }

  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let(:key_directory) do
        case os_facts[:os]['family']
        when 'RedHat'
          '/etc/pki/tls/private'
        else
          '/etc/ssl/private'
        end
      end

      context 'with default parameters' do
        it { is_expected.to compile.with_all_deps }

        it 'creates the key file with default filename' do
          is_expected.to contain_file("#{key_directory}/example.com.key.pem").with(
            ensure: 'file',
            source: '/etc/letsencrypt/live/example.com/privkey.pem',
            mode: '0600',
            owner: 'root',
            group: 'root',
            links: 'follow',
          )
        end
      end

      context 'with custom directory' do
        let(:params) { { directory: '/custom/key/path' } }

        it 'creates key in custom directory' do
          is_expected.to contain_file('/custom/key/path/example.com.key.pem')
        end
      end

      context 'with custom filename' do
        let(:params) { { filename: 'custom.key' } }

        it 'uses custom filename' do
          is_expected.to contain_file("#{key_directory}/custom.key")
        end
      end

      context 'with exclude_filetype enabled' do
        let(:params) { { exclude_filetype: true } }

        it 'excludes file extension from filename' do
          is_expected.to contain_file("#{key_directory}/example.com.key")
        end
      end

      context 'with server hostname matching system hostname' do
        let(:title) { 'server' }
        let(:facts) { os_facts.merge({ networking: { hostname: 'server', domain: 'example.com', fqdn: 'server.example.com' } }) }

        it 'uses server.key.pem as filename' do
          is_expected.to contain_file("#{key_directory}/server.key.pem")
        end

        context 'with server_hostname disabled' do
          let(:params) { { server_hostname: false } }

          it 'uses hostname-based filename instead of server' do
            is_expected.to contain_file("#{key_directory}/server.key.pem")
          end
        end
      end

      context 'with custom owner and group' do
        let(:params) { { owner: 'nginx', group: 'nginx' } }

        it 'sets custom ownership' do
          is_expected.to contain_file("#{key_directory}/example.com.key.pem").with(
            owner: 'nginx',
            group: 'nginx',
          )
        end
      end

      context 'with custom mode' do
        let(:params) { { mode: '0640' } }

        it 'sets custom file mode' do
          is_expected.to contain_file("#{key_directory}/example.com.key.pem").with(
            mode: '0640',
          )
        end
      end

      context 'with ensure absent' do
        let(:params) { { ensure: 'absent' } }

        it 'removes the key file' do
          is_expected.to contain_file("#{key_directory}/example.com.key.pem").with(
            ensure: 'absent',
          )
        end
      end

      context 'with unsafe file permissions' do
        let(:params) { { mode: '0644' } }

        it 'shows a warning for unsafe permissions' do
          is_expected.to compile
        end
      end

      context 'with title without domain and networking facts' do
        let(:title) { 'myhost' }
        let(:facts) { os_facts.merge({ networking: { domain: 'example.com' } }) }

        it 'appends domain to create FQDN' do
          is_expected.to contain_file("#{key_directory}/myhost.key.pem").with(
            source: '/etc/letsencrypt/live/myhost.example.com/privkey.pem',
          )
        end
      end
    end
  end
end
