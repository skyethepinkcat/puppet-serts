# @summary Represents a keychain file containing both a certificate and its key.
# @param ensure Whether the keychain file should be present or absent.
# @param title The name of the resource, which should be the fully qualified domain name (FQDN) for the cert.
# @param owner The owner of the keychain file.
# @param group The group of the keychain file.
# @param directory The directory where the keychain file should be stored.
# @param mode The file mode for the keychain file.
# @param fqdn The fully qualified domain name of the url the cert is for. By default, this is the title of the resource,
#   but if the title does not contain a dot, the system's domain will be appended to it.
# @param fullchain_cert Whether to use the fullchain.pem file from Certbot instead of cert.pem.
# @param alt_names An array of additional fqdns that should be included. If the fqdn matches
#   the system's fqdn, additional alt names will be looked up from hiera.
# @param exclude_filetype Whether to exclude the filetype from the filename. Defaults to false, which
#   means the file will be named like "server.keychain.pem". If true, it will be named like "server.keychain".
# @param server_hostname Whether to use 'server' as the filename if the hostname matches the system's hostname. Defaults to true.
# @param certname The name of the letsencrypt certpair to use. By default, this is the same as the fqdn.
# @param key_first Whether to put the private key before the certificate in the keychain file. Defaults to true.
# @param filename The name of the keychain file.  If not given, it will be
#   determined based on the hostname like "server.keychain.pem".
define serts::keychain (
  Enum['present', 'absent'] $ensure = 'present',
  String $owner = 'root',
  String $group = 'root',
  String $fqdn = ($title =~ /[.]/) ? { true => $title, false => "${title}.${facts['networking']['domain']}" },
  Boolean $fullchain_cert = false,
  Array[Stdlib::Host] $alt_names = [],
  Boolean $exclude_filetype = false,
  String $filename = $exclude_filetype ? {
    true    => "${fqdn}.keychain",
    default => "${fqdn}.keychain.pem",
  },
  Boolean $server_hostname = true,
  Stdlib::Filemode $mode = '0600',
  Stdlib::AbsolutePath $directory = $serts::cert_directory,
  String $certname = $fqdn,
  Boolean $key_first = true,
) {
  require serts

  if (!defined(Serts::Autopair[$certname])) {
    serts::autopair { $certname:
      ensure    => $ensure,
      fqdn      => $fqdn,
      alt_names => $alt_names,
    }
  }
  serts::bundle { "${certname}-keychain":
    ensure         => $ensure,
    ca_bundle_name => $filename,
    owner          => $owner,
    group          => $group,
    mode           => $mode,
    certname       => $certname,
    components     => $key_first ? {
      true    => [
        "${serts::letsencrypt_directory}/live/${certname}/privkey.pem",
        $fullchain_cert ? {
          true  => "${serts::letsencrypt_directory}/live/${certname}/fullchain.pem",
          false => "${serts::letsencrypt_directory}/live/${certname}/cert.pem",
        },
      ],
      default => [
        $fullchain_cert ? {
          true  => "${serts::letsencrypt_directory}/live/${certname}/fullchain.pem",
          false => "${serts::letsencrypt_directory}/live/${certname}/cert.pem",
        },
        "${serts::letsencrypt_directory}/live/${certname}/privkey.pem",
      ],
    },
    directory      => $directory,
  }
}
