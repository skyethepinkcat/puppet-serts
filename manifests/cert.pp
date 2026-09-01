# @summary Represents a certificate and its key. You might want to use serts::certpair instead.
# @param ensure Whether the certificate and key should be present or absent.
# @param title The name of the resource, which should be the fully qualified domain name (FQDN) for the cert.
# @param owner The owner of the certificate and key files.
# @param group The group of the certificate and key files.
# @param directory The directory where the certificate should be stored.
# @param filename The name of the certificate file.  If not given, it will be
#   determined based on the hostname like "server.crt.pem".
# @param exclude_filetype Whether to exclude the filetype from the filename. Defaults to false, which
#   means the file will be named like "server.crt.pem". If true, it will be named like "server.crt".
# @param server_hostname Whether to use 'server' as the filename if the hostname matches the system's hostname. Defaults to true.
# @param mode The file mode for the certificate file.
# @param fqdn The fully qualified domain name of the url the cert is for. By default, this is the title of the resource,
#   but if the title does not contain a dot, the system's domain will be appended.
# @param fullchain_cert Whether to use the fullchain.pem file from Certbot instead of cert.pem. Defaults to false.
# @param certname The name of the letsencrypt certpair to use. By default, this is the same as the fqdn.
define serts::cert (
  Enum['present', 'absent'] $ensure = 'present',
  String $fqdn = ($title =~ /[.]/) ? { true => $title, false => "${title}.${facts['networking']['domain']}" },
  String $certname = $fqdn,
  String $owner = 'root',
  String $group = 'root',
  Boolean $exclude_filetype = false,
  Boolean $server_hostname = true,
  Stdlib::Filemode $mode = '0444',
  Optional[String] $filename = undef,
  Optional[Boolean] $fullchain_cert = undef,
  Optional[Stdlib::AbsolutePath] $directory = undef,
) {
  require serts

  $real_fullchain_cert = $fullchain_cert ? {
    undef => $serts::fullchain_cert
    default => $fullchain_cert
  }

  $source = $fullchain_cert ? {
    true  => "${serts::letsencrypt_directory}/live/${certname}/fullchain.pem",
    false => "${serts::letsencrypt_directory}/live/${certname}/cert.pem",
  }

  $real_directory = $directory ? {
    undef   => $serts::cert_directory,
    default => $directory,
  }

  # If specific file names are given, use those.  Otherwise, if the hostname matches
  # the system's hostname, use server.crt.pem.  Otherwise, use
  # <hostname>.crt.pem.
  if $filename == undef {
    if ($facts['networking']['hostname'] == $certname or $facts['networking']['fqdn'] == $certname) and $server_hostname {
      $real_filename = $exclude_filetype ? {
        true    => 'server.crt',
        default => 'server.crt.pem',
      }
    } else {
      $real_filename = $exclude_filetype ? {
        true    => "${certname}.crt",
        default => "${certname}.crt.pem",
      }
    }
  } else {
    $real_filename = $filename
  }

  # Note that links are followed, so we're creating a new file regardless of the source. This might make less sense, but
  # we need to handle permissions and ownership, which links complicate.
  file { "${real_directory}/${real_filename}":
    ensure => $ensure ? { 'present' => 'file', 'absent'  => absent, },
    source => $source,
    path   => "${real_directory}/${real_filename}",
    links  => 'follow',
    mode   => $mode,
    owner  => $owner,
    group  => $group,
  }
}
