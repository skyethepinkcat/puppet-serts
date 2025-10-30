# frozen_string_literal: true

require 'spec_helper'

describe 'serts::cert' do
  let(:title) { 'example.com' }
  let(:pre_condition) { 'include serts' }

  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let(:cert_directory) do
        case os_facts[:os]['family']
        when 'RedHat'
          '/etc/pki/tls/certs'
        else
          '/etc/ssl/certs'
        end
      end

      context 'with default parameters' do
        it { is_expected.to compile.with_all_deps }

        it 'creates the certificate file with default filename' do
          is_expected.to contain_file("#{cert_directory}/example.com.crt.pem").with(
            ensure: 'file',
            source: '/etc/letsencrypt/live/example.com/cert.pem',
            mode: '0644',
            owner: 'root',
            group: 'root',
            links: 'follow',
          )
        end
      end

      context 'with fullchain_cert enabled' do
        let(:params) { { fullchain_cert: true } }

        it 'uses fullchain.pem as source' do
          is_expected.to contain_file("#{cert_directory}/example.com.crt.pem").with(
            source: '/etc/letsencrypt/live/example.com/fullchain.pem',
          )
        end
      end

      context 'with custom directory' do
        let(:params) { { directory: '/custom/cert/path' } }

        it 'creates certificate in custom directory' do
          is_expected.to contain_file('/custom/cert/path/example.com.crt.pem')
        end
      end

      context 'with custom filename' do
        let(:params) { { filename: 'custom.crt' } }

        it 'uses custom filename' do
          is_expected.to contain_file("#{cert_directory}/custom.crt")
        end
      end

      context 'with exclude_filetype enabled' do
        let(:params) { { exclude_filetype: true } }

        it 'excludes file extension from filename' do
          is_expected.to contain_file("#{cert_directory}/example.com.crt")
        end
      end

      context 'with server hostname matching system hostname' do
        let(:title) { 'server' }
        let(:facts) { os_facts.merge({ networking: { hostname: 'server', domain: 'example.com', fqdn: 'server.example.com' } }) }

        it 'uses server.crt.pem as filename' do
          is_expected.to contain_file("#{cert_directory}/server.crt.pem")
        end

        context 'with server_hostname disabled' do
          let(:params) { { server_hostname: false } }

          it 'uses hostname-based filename instead of server' do
            is_expected.to contain_file("#{cert_directory}/server.crt.pem")
          end
        end
      end

      context 'with custom owner and group' do
        let(:params) { { owner: 'nginx', group: 'nginx' } }

        it 'sets custom ownership' do
          is_expected.to contain_file("#{cert_directory}/example.com.crt.pem").with(
            owner: 'nginx',
            group: 'nginx',
          )
        end
      end

      context 'with ensure absent' do
        let(:params) { { ensure: 'absent' } }

        it 'removes the certificate file' do
          is_expected.to contain_file("#{cert_directory}/example.com.crt.pem").with(
            ensure: 'absent',
          )
        end
      end
    end
  end
end
