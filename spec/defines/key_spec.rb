# frozen_string_literal: true

require 'spec_helper'

describe 'serts::key' do
  let(:title) { 'test.example.com' }
  let(:pre_condition) { 'include serts' }

  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      # Set expected directories based on OS family
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

        it do
          is_expected.to contain_file("#{expected_key_dir}/test.example.com.key.pem").with(
            'ensure' => 'file',
            'source' => '/etc/letsencrypt/live/test.example.com/privkey.pem',
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
          is_expected.to contain_file("#{expected_key_dir}/test.example.com.key.pem").with(
            'ensure' => 'absent',
          )
        end
      end

      context 'with custom keyname' do
        let(:params) { { keyname: 'custom-key' } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_key_dir}/custom-key.key.pem").with(
            'source' => '/etc/letsencrypt/live/test.example.com/privkey.pem',
          )
        end
      end

      context 'with custom owner and group' do
        let(:params) do
          {
            owner: 'nginx',
            group: 'nginx',
          }
        end

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_key_dir}/test.example.com.key.pem").with(
            'owner' => 'nginx',
            'group' => 'nginx',
          )
        end
      end

      context 'with custom mode' do
        let(:params) { { mode: '0640' } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_key_dir}/test.example.com.key.pem").with(
            'mode' => '0640',
          )
        end
      end

      context 'with unsafe permissions' do
        let(:params) { { mode: '0644' } }

        it { is_expected.to compile.with_all_deps }

        # The warning is issued but compilation should still succeed
        it do
          is_expected.to contain_file("#{expected_key_dir}/test.example.com.key.pem").with(
            'mode' => '0644',
          )
        end
      end

      context 'with custom directory' do
        let(:params) { { directory: '/custom/keys' } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file('/custom/keys/test.example.com.key.pem').with(
            'ensure' => 'file',
          )
        end
      end

      context 'with custom filename' do
        let(:params) { { filename: 'custom-key.pem' } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_key_dir}/custom-key.pem").with(
            'ensure' => 'file',
          )
        end
      end

      context 'with exclude_filetype true' do
        let(:params) { { exclude_filetype: true } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_key_dir}/test.example.com.key").with(
            'ensure' => 'file',
          )
        end
      end

      context 'when title matches system hostname' do
        let(:title) { 'server.example.com' }
        let(:params) { { server_hostname: true } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_key_dir}/server.key.pem").with(
            'ensure' => 'file',
          )
        end
      end

      context 'when title matches system hostname with exclude_filetype' do
        let(:title) { 'server.example.com' }
        let(:params) do
          {
            server_hostname: true,
            exclude_filetype: true,
          }
        end

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_key_dir}/server.key").with(
            'ensure' => 'file',
          )
        end
      end

      context 'with server_hostname false' do
        let(:title) { 'server.example.com' }
        let(:params) { { server_hostname: false } }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_key_dir}/server.example.com.key.pem").with(
            'ensure' => 'file',
          )
        end
      end

      context 'when title has no dot (hostname only)' do
        let(:title) { 'testhost' }

        it { is_expected.to compile.with_all_deps }

        it do
          is_expected.to contain_file("#{expected_key_dir}/testhost.key.pem").with(
            'source' => '/etc/letsencrypt/live/testhost.example.com/privkey.pem',
          )
        end
      end
    end
  end
end
