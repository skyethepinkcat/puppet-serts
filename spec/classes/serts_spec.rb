# frozen_string_literal: true

require 'spec_helper'

describe 'serts' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      # Set expected directories based on OS family
      let(:expected_cert_dir) do
        case os_facts[:os]['family']
        when 'RedHat'
          '/etc/pki/tls/certs'
        else
          '/etc/ssl/certs'
        end
      end

      let(:expected_key_dir) do
        case os_facts[:os]['family']
        when 'RedHat'
          '/etc/pki/tls/private'
        else
          '/etc/ssl/private'
        end
      end

      context 'with default parameters' do
        it { is_expected.to compile.with_all_deps }

        it { is_expected.to contain_class('letsencrypt') }

        it do
          is_expected.to contain_class('letsencrypt').with(
            'configure_epel' => false,
            'config' => { 'email' => 'example_email@gmail.com', 'server' => 'https://acme-v02.api.letsencrypt.org/directory' },
          )
        end

        it do
          is_expected.to contain_file(expected_cert_dir).with(
            'ensure' => 'directory',
            'owner' => 'root',
            'group' => 'root',
            'mode' => '0555',
          )
        end

        it do
          is_expected.to contain_file(expected_key_dir).with(
            'ensure' => 'directory',
            'owner' => 'root',
            'group' => 'root',
            'mode' => '0511',
          )
        end
      end

      context 'with custom directories' do
        let(:params) do
          {
            cert_directory: '/custom/certs',
            key_directory: '/custom/keys',
          }
        end

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file('/custom/certs').with(
            'ensure' => 'directory',
            'owner' => 'root',
            'group' => 'root',
            'mode' => '0555',
          )
        end

        it do
          is_expected.to contain_file('/custom/keys').with(
            'ensure' => 'directory',
            'owner' => 'root',
            'group' => 'root',
            'mode' => '0511',
          )
        end
      end

      context 'with manage_directories false' do
        let(:params) { { manage_directories: false } }

        it { is_expected.to compile.with_all_deps }
        it { is_expected.not_to contain_file('/etc/ssl/certs') }
        it { is_expected.not_to contain_file('/etc/ssl/private') }
      end

      context 'with custom letsencrypt_config' do
        let(:params) do
          {
            letsencrypt_config: {
              'email' => 'admin@example.com',
              'plugin' => 'apache',
            },
          }
        end

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_class('letsencrypt').with(
            'config' => {
              'email' => 'admin@example.com',
              'plugin' => 'apache',
            },
          )
        end
      end

      context 'with alt_names' do
        let(:params) { { alt_names: ['www.example.com', 'mail.example.com'] } }

        it { is_expected.to compile.with_all_deps }
        # alt_names are used by serts::autopair, not directly by the class
      end

      context 'with custom letsencrypt_directory' do
        let(:params) { { letsencrypt_directory: '/custom/letsencrypt' } }

        it { is_expected.to compile.with_all_deps }
        # The directory is used by other defined types
      end
    end
  end
end
