# @summary Represents a certificate and its key.
# @param ensure Whether the certificate and key should be present or absent.
# @param title The name of the resource, which should be the fully qualified domain name (FQDN) for the cert.
# @param owner The owner of the certificate and key files.
# @param group The group of the certificate and key files.
# @param cert_directory The directory where the certificate should be stored.
# @param key_directory The directory where the key should be stored.
# @param cert_filename The name of the certificate file.  If not given, it will be
#   determined based on the hostname like "server.crt.pem".
# @param key_filename The name of the key file.  If not given, it will be
#   determined based on the hostname, like "server.key.pem".
# @param exclude_filetype Whether to exclude the filetype from the filenames. Defaults to false, which
#   means the files will be named like "server.cert.pem" and "server.key.pem". If true, they will be named like "server.crt" and "server.key".
# @param server_hostname Whether to use 'server' as the filename if the hostname matches the system's hostname. Defaults to true.
# @param cert_mode The file mode for the certificate file.
# @param key_mode The file mode for the key file.
# @param fqdn The fully qualified domain name of the url the cert is for. By default, this is the title of the resource,
#   but if the title does not contain a dot, the system's domain will be appended to it.
# @param alt_names An array of additional fqdns that should be included. If the fqdn matches
#   the system's fqdn, additional alt names will be looked up from hiera.
# @param fullchain_cert Whether to use the fullchain.pem file from Certbot instead of cert.pem.
# @param ignore_autopair_warning Whether to ignore a warning if a Serts::Autopair resource is already defined for this fqdn.
#
# @example Basic usage with default parameters
#   ourcerts::certpair { 'myhost': }
#
# @example Specify custom owner and group
#   ourcerts::certpair { 'myhost':
#     owner => 'appuser',
#     group => 'appgroup',
#   }
#
define serts::certpair (
  Enum['present', 'absent'] $ensure = 'present',
  String $owner = 'root',
  String $group = 'root',
  String $fqdn = ($title =~ /[.]/) ? { true => $title, false => "${title}.${facts['networking']['domain']}" },
  Boolean $fullchain_cert = false,
  Array[Stdlib::Host] $alt_names = [],
  Boolean $exclude_filetype = false,
  Boolean $server_hostname = true,
  Stdlib::Filemode $cert_mode = '0644',
  Stdlib::Filemode $key_mode = '0600',
  Optional[String] $cert_filename = undef,
  Optional[String] $key_filename = undef,
  Optional[Stdlib::AbsolutePath] $cert_directory = undef,
  Optional[Stdlib::AbsolutePath] $key_directory = undef,
  Boolean $ignore_autopair_warning = false,
) {
  require serts
  if (!defined(Serts::Autopair[$fqdn])) {
    serts::autopair { $fqdn:
      ensure    => $ensure,
      fqdn      => $fqdn,
      alt_names => $alt_names,
    }
  } else {
    unless $ignore_autopair_warning {
      warning("The Serts::Certpair ${fqdn} is set to use automatic certs, but an Ourcerts::Autopair resource is already defined for it. Consider letting this resource manage the certpair instead.")
    }
  }
  serts::cert { $title:
    ensure           => $ensure,
    owner            => $owner,
    group            => $group,
    filename         => $cert_filename,
    directory        => $cert_directory,
    exclude_filetype => $exclude_filetype,
    server_hostname  => $server_hostname,
    mode             => $cert_mode,
    fqdn             => $fqdn,
    fullchain_cert   => $fullchain_cert,
  }
  serts::key { $title:
    ensure           => $ensure,
    fqdn             => $fqdn,
    owner            => $owner,
    group            => $group,
    filename         => $key_filename,
    directory        => $key_directory,
    exclude_filetype => $exclude_filetype,
    server_hostname  => $server_hostname,
    mode             => $key_mode,
  }
}
