# @summary Manage our custom certs.
# @param alt_names An array of additional hostnames that should be included for the system's main certpair,
#   only used by hiera lookup.
# @param letsencrypt_config A hash of additional configuration options to pass to the letsencrypt class.
class csee_certs (
  Array[Stdlib::Host] $alt_names = [],
  Hash $letsencrypt_config = {},
) {
  Certs::Autopair <| |> -> Certs::Cert <| |> -> Certs::Key <| |> -> Certs::Bundle <| |>
  if $facts['os']['family'] == 'RedHat' {
    $cert_directory = '/etc/ssl/certs'
    $cert_linked_directory = '/etc/pki/tls/certs'
    $key_directory = '/etc/pki/tls/private'
    # Cert directory actually needs to be a symlink, if we want to play nice with
    # the ca-certs package 
    file { $cert_linked_directory:
      ensure => 'directory',
    }
    file { $cert_directory:
      ensure => 'link',
      target => $cert_linked_directory,
      force  => true,
    }
    file { $key_directory:
      ensure => directory,
      mode   => '0711',
    }
  } else {
    $cert_directory = '/etc/ssl/certs'
    $key_directory = '/etc/ssl/private'
    file { '/etc/ssl/':
      ensure => directory,
      mode   => '0755',
    }
    ~> file { '/etc/ssl/certs':
      ensure => directory,
      mode   => '0755',
    }
    ~> file { '/etc/ssl/private':
      ensure => directory,
      mode   => '0750',
      group  => 'ssl-cert',
    }
  }
  $concat_target = 'Certificate Authority File'
  concat { $concat_target:
    ensure => absent,
    path   => '/etc/ssl/certs/certs.pem',
  }

  $puppet_certdir = 'puppet:///modules/ourcerts/external-certs'

  if $automatic_certs {
    class { 'letsencrypt':
      configure_epel => false,
      config         => $letsencrypt_config,
    }
  }
}
