# frozen_string_literal: true

require 'spec_helper'

describe 'serts::bundle' do
  let(:title) { 'ca-bundle.pem' }
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
          is_expected.to contain_file("#{expected_cert_dir}/ca-bundle.pem").with(
            'ensure' => 'file',
            'source' => '/etc/letsencrypt/live/server.example.com/chain.pem',
          )
        end
      end

      context 'with ensure absent' do
        let(:params) { { ensure: 'absent' } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_cert_dir}/ca-bundle.pem").with(
            'ensure' => 'absent',
          )
        end
      end

      context 'with custom directory' do
        let(:params) { { directory: '/custom/path' } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file('/custom/path/ca-bundle.pem').with(
            'ensure' => 'file',
          )
        end
      end

      context 'with custom certname' do
        let(:params) { { certname: 'custom.example.com' } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_cert_dir}/ca-bundle.pem").with(
            'source' => '/etc/letsencrypt/live/custom.example.com/chain.pem',
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
          is_expected.to contain_file("#{expected_cert_dir}/ca-bundle.pem").with(
            'owner' => 'nginx',
            'group' => 'nginx',
          )
        end
      end

      context 'with custom mode' do
        let(:params) { { mode: '0640' } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_cert_dir}/ca-bundle.pem").with(
            'mode' => '0640',
          )
        end
      end

      context 'with single component' do
        let(:params) { { components: ['file:///path/to/single/cert.pem'] } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_cert_dir}/ca-bundle.pem").with(
            'ensure' => 'file',
            'source' => 'file:///path/to/single/cert.pem',
            'links' => 'follow',
          )
        end
      end

      context 'with multiple components' do
        let(:params) do
          {
            components: [
              'file:///path/to/cert1.pem',
              'file:///path/to/cert2.pem',
              'file:///path/to/cert3.pem',
            ]
          }
        end

        it { is_expected.to compile.with_all_deps }
        it { is_expected.to contain_concat("#{expected_cert_dir}/ca-bundle.pem") }

        it do
          is_expected.to contain_concat("#{expected_cert_dir}/ca-bundle.pem").with(
            'ensure' => 'present',
          )
        end

        it { is_expected.to contain_concat__fragment('ca-bundle.pem-0') }
        it { is_expected.to contain_concat__fragment('ca-bundle.pem-1') }
        it { is_expected.to contain_concat__fragment('ca-bundle.pem-2') }
      end

      context 'with custom ca_bundle_name' do
        let(:params) { { ca_bundle_name: 'custom-bundle.pem' } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_cert_dir}/custom-bundle.pem").with(
            'ensure' => 'file',
          )
        end
      end
    end
  end
end
