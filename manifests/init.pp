# @summary Manage our custom certs.
# @param alt_names An array of additional hostnames that should be included for the system's main certpair,
#   only used by hiera lookup.
# @param letsencrypt_config A hash of additional configuration options to pass to the letsencrypt class.
# @param manage_directories Whether to manage the certificate and key directories.
# @param cert_directory The directory where certificates should be stored. Defaults to /etc/ssl/certs, or /etc/pki/tls/certs on RedHat systems.
# @param key_directory The directory where private keys should be stored. Defaults to /etc/ssl/private, or /etc/pki/tls/private on RedHat systems.
# @param letsencrypt_directory The directory where letsencrypt stores its data. Defaults to /etc/letsencrypt.
class serts (
  Array[Stdlib::Host] $alt_names = [],
  Hash $letsencrypt_config = {},
  Boolean $manage_directories = true,
  Boolean $link_directories = false,
  Stdlib::AbsolutePath $cert_directory = '/etc/ssl/certs',
  Stdlib::AbsolutePath $key_directory = '/etc/ssl/private',
  String $cert_directory_owner = 'root',
  String $cert_directory_group = 'root',
  String $key_directory_owner = 'root',
  String $key_directory_group = 'root',
  String $cert_directory_mode = '0755',
  String $key_directory_mode = '0711',
  Stdlib::AbsolutePath $letsencrypt_directory = '/etc/letsencrypt',
) {
  # Enforce ordering of resources.
  Serts::Autopair <| |> ~> Serts::Cert <| |>
  Serts::Autopair <| |> ~> Serts::Key <| |>
  Serts::Autopair <| |> ~> Serts::Bundle <| |>

  if $manage_directories {
    file { $cert_directory:
      ensure => 'directory',
      owner  => $cert_directory_owner,
      group  => $cert_directory_group,
      mode   => $cert_directory_mode,
    }
    file { $key_directory:
      ensure => 'directory',
      owner  => $key_directory_owner,
      group  => $key_directory_group,
      mode   => $key_directory_mode,
    }
    if $link_directories {
      if $cert_directory != '/etc/ssl/certs' {
        file { '/etc/ssl/certs':
          ensure => 'link',
          target => $cert_directory,
        }
      }
      if $key_directory != '/etc/ssl/private' {
        file { '/etc/ssl/private':
          ensure => 'link',
          target => $key_directory,
        }
      }
    }
  }
  class { 'letsencrypt':
    configure_epel => false,
    config         => $letsencrypt_config,
  }
}
