# frozen_string_literal: true

require 'spec_helper'

describe 'serts::cert' do
  let(:title) { 'test.example.com' }
  let(:pre_condition) { 'include serts' }

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

      context 'with default parameters' do
        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_cert_dir}/test.example.com.crt.pem").with(
            'ensure' => 'file',
            'source' => '/etc/letsencrypt/live/test.example.com/cert.pem',
            'owner' => 'root',
            'group' => 'root',
            'mode' => '0444',
          )
        end
      end

      context 'with ensure absent' do
        let(:params) { { ensure: 'absent' } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_file("#{expected_cert_dir}/test.example.com.crt.pem").with(
            'ensure' => 'absent',
          )
        end
      end

      context 'with fullchain_cert true' do
        let(:params) { { fullchain_cert: true } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_file("#{expected_cert_dir}/test.example.com.crt.pem").with(
            'source' => '/etc/letsencrypt/live/test.example.com/fullchain.pem',
          )
        end
      end

      context 'with custom owner and group' do
        let(:params) do
          {
            owner: 'nginx',
            group: 'nginx'
          }
        end

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_file("#{expected_cert_dir}/test.example.com.crt.pem").with(
            'owner' => 'nginx',
            'group' => 'nginx',
          )
        end
      end

      context 'with custom mode' do
        let(:params) { { mode: '0640' } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_file("#{expected_cert_dir}/test.example.com.crt.pem").with(
            'mode' => '0640',
          )
        end
      end

      context 'with custom directory' do
        let(:params) { { directory: '/custom/certs' } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_file('/custom/certs/test.example.com.crt.pem').with(
            'ensure' => 'file',
          )
        end
      end

      context 'with custom filename' do
        let(:params) { { filename: 'custom-cert.pem' } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_file("#{expected_cert_dir}/custom-cert.pem").with(
            'ensure' => 'file',
          )
        end
      end

      context 'with exclude_filetype true' do
        let(:params) { { exclude_filetype: true } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_file("#{expected_cert_dir}/test.example.com.crt").with(
            'ensure' => 'file',
          )
        end
      end

      context 'when title matches system hostname' do
        let(:title) { 'server.example.com' }
        let(:params) { { server_hostname: true } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_file("#{expected_cert_dir}/server.crt.pem").with(
            'ensure' => 'file',
          )
        end
      end

      context 'when title matches system hostname with exclude_filetype' do
        let(:title) { 'server.example.com' }
        let(:params) do
          {
            server_hostname: true,
            exclude_filetype: true
          }
        end

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_file("#{expected_cert_dir}/server.crt").with(
            'ensure' => 'file',
          )
        end
      end

      context 'with server_hostname false' do
        let(:title) { 'server.example.com' }
        let(:params) { { server_hostname: false } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_file("#{expected_cert_dir}/server.example.com.crt.pem").with(
            'ensure' => 'file',
          )
        end
      end

      context 'when title has no dot (hostname only)' do
        let(:title) { 'testhost' }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_file("#{expected_cert_dir}/testhost.example.com.crt.pem").with(
            'source' => '/etc/letsencrypt/live/testhost.example.com/cert.pem',
          )
        end
      end

      context 'with custom certname' do
        let(:params) { { certname: 'custom.example.com' } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_file("#{expected_cert_dir}/custom.example.com.crt.pem").with(
            'source' => '/etc/letsencrypt/live/custom.example.com/cert.pem',
          )
        end
      end
    end
  end
end
