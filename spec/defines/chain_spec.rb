# frozen_string_literal: true

require 'spec_helper'

describe 'serts::chain' do
  let(:title) { 'ca-chain.pem' }
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

        it { is_expected.to contain_serts__bundle('ca-chain.pem') }

        it do
          is_expected.to contain_serts__bundle('ca-chain.pem').with(
            'ensure' => 'present',
            'ca_bundle_name' => 'ca-chain.pem',
            'owner' => 'root',
            'group' => 'root',
            'mode' => '0644',
            'certname' => 'server.example.com',
            'components' => [],
            'directory' => expected_cert_dir,
          )
        end
      end

      context 'with ensure absent' do
        let(:params) { { ensure: 'absent' } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_serts__bundle('ca-chain.pem').with(
            'ensure' => 'absent',
          )
        end
      end

      context 'with custom filename' do
        let(:params) { { filename: 'custom-chain.pem' } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_serts__bundle('custom-chain.pem').with(
            'ca_bundle_name' => 'custom-chain.pem',
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
          is_expected.to contain_serts__bundle('ca-chain.pem').with(
            'owner' => 'nginx',
            'group' => 'nginx',
          )
        end
      end

      context 'with custom mode' do
        let(:params) { { mode: '0640' } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_serts__bundle('ca-chain.pem').with(
            'mode' => '0640',
          )
        end
      end

      context 'with custom certname' do
        let(:params) { { certname: 'custom.example.com' } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_serts__bundle('ca-chain.pem').with(
            'certname' => 'custom.example.com',
          )
        end
      end

      context 'with custom directory' do
        let(:params) { { directory: '/custom/certs' } }

        it { is_expected.to compile.with_all_deps }
        it do
          is_expected.to contain_serts__bundle('ca-chain.pem').with(
            'directory' => '/custom/certs',
          )
        end
      end
    end
  end
end
