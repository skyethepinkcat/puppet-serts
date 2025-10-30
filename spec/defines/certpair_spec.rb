# frozen_string_literal: true

require 'spec_helper'

describe 'serts::certpair' do
  let(:title) { 'test.example.com' }
  let(:pre_condition) { 'include serts' }

  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      context 'with default parameters' do
        it { is_expected.to compile.with_all_deps }

        it { is_expected.to contain_serts__autopair('test.example.com') }
        it { is_expected.to contain_serts__cert('test.example.com') }
        it { is_expected.to contain_serts__key('test.example.com') }

        it do
          is_expected.to contain_serts__autopair('test.example.com').with(
            'ensure' => 'present',
            'fqdn' => 'test.example.com',
            'alt_names' => [],
            'certname' => 'test.example.com',
          )
        end

        it do
          is_expected.to contain_serts__cert('test.example.com').with(
            'ensure' => 'present',
            'owner' => 'root',
            'group' => 'root',
            'fullchain_cert' => false,
            'mode' => '0444',
          )
        end

        it do
          is_expected.to contain_serts__key('test.example.com').with(
            'ensure' => 'present',
            'owner' => 'root',
            'group' => 'root',
            'mode' => '0400',
          )
        end
      end

      context 'with ensure absent' do
        let(:params) { { ensure: 'absent' } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_serts__autopair('test.example.com').with(
            'ensure' => 'absent',
          )
        end

        it do
          is_expected.to contain_serts__cert('test.example.com').with(
            'ensure' => 'absent',
          )
        end

        it do
          is_expected.to contain_serts__key('test.example.com').with(
            'ensure' => 'absent',
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
          is_expected.to contain_serts__cert('test.example.com').with(
            'owner' => 'nginx',
            'group' => 'nginx',
          )
        end

        it do
          is_expected.to contain_serts__key('test.example.com').with(
            'owner' => 'nginx',
            'group' => 'nginx',
          )
        end
      end

      context 'with fullchain_cert true' do
        let(:params) { { fullchain_cert: true } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_serts__cert('test.example.com').with(
            'fullchain_cert' => true,
          )
        end
      end

      context 'with alt_names' do
        let(:params) { { alt_names: ['alt1.example.com', 'alt2.example.com'] } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_serts__autopair('test.example.com').with(
            'alt_names' => ['alt1.example.com', 'alt2.example.com'],
          )
        end
      end

      context 'with custom file modes' do
        let(:params) do
          {
            cert_mode: '0640',
            key_mode: '0640'
          }
        end

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_serts__cert('test.example.com').with(
            'mode' => '0640',
          )
        end

        it do
          is_expected.to contain_serts__key('test.example.com').with(
            'mode' => '0640',
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

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_serts__cert('test.example.com').with(
            'filename' => 'custom.crt',
          )
        end

        it do
          is_expected.to contain_serts__key('test.example.com').with(
            'filename' => 'custom.key',
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

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_serts__cert('test.example.com').with(
            'directory' => '/custom/certs',
          )
        end

        it do
          is_expected.to contain_serts__key('test.example.com').with(
            'directory' => '/custom/keys',
          )
        end
      end

      context 'with exclude_filetype true' do
        let(:params) { { exclude_filetype: true } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_serts__cert('test.example.com').with(
            'exclude_filetype' => true,
          )
        end

        it do
          is_expected.to contain_serts__key('test.example.com').with(
            'exclude_filetype' => true,
          )
        end
      end

      context 'with server_hostname false' do
        let(:params) { { server_hostname: false } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_serts__cert('test.example.com').with(
            'server_hostname' => false,
          )
        end

        it do
          is_expected.to contain_serts__key('test.example.com').with(
            'server_hostname' => false,
          )
        end
      end

      context 'when title has no dot (hostname only)' do
        let(:title) { 'testhost' }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_serts__autopair('testhost.example.com').with(
            'fqdn' => 'testhost.example.com',
          )
        end
      end

      context 'with custom certname' do
        let(:params) { { certname: 'custom.example.com' } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_serts__autopair('custom.example.com').with(
            'certname' => 'test.example.com',
          )
        end
      end

      context 'with ignore_autopair_warning true' do
        let(:params) { { ignore_autopair_warning: true } }

        it { is_expected.to compile.with_all_deps }
        # This parameter doesn't affect resource declaration, just warnings
        it { is_expected.to contain_serts__autopair('test.example.com') }
      end
    end
  end
end
