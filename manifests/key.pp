# @summary Represents a key. You might want to use serts::certpair instead.
# @param title The name of the resource, which should be the fully qualified domain name (FQDN) for the cert.
# @param ensure Whether the key should be present or absent.
# @param owner The owner of the key files.
# @param group  The group of the key files.
# @param directory The directory where the key should be stored.
# @param filename The name of the key file.  If not given, it will be
#   determined based on the hostname like "server.key.pem".
# @param exclude_filetype Whether to exclude the filetype from the filename. Defaults to false, which 
#   means the file will be named like "server.key.pem". If true, it will be named like "server.key".
# @param server_hostname Whether to use 'server' as the filename if the hostname matches the system's hostname. Defaults to true.
# @param mode The file mode for the key file.
# @param fqdn The fully qualified domain name of the url the cert is for.
# @param keyname The name of the key to use, which determines the name of the key file.  Defaults to the title of the resource.
define serts::key (
  Enum['present', 'absent'] $ensure = 'present',
  String $keyname = $title,
  String $fqdn = ($title =~ /[.]/) ? { true => $title, false => "${title}.${facts['networking']['domain']}" },
  String $owner = 'root',
  String $group = 'root',
  Boolean $exclude_filetype = false,
  Boolean $server_hostname = true,
  Stdlib::Filemode $mode = '0600',
  Optional[String] $filename = undef,
  Optional[Stdlib::AbsolutePath] $directory = undef,
) {
  require serts

  # Warn if the key has unsafe permissions
  if $mode =~ /^\d?\d[1-9][1-9]$/ {
    warning("The mode ${mode} for the key ${fqdn} is too permissive.")
  }

  $source = "${serts::letsencrypt_directory}/live/${fqdn}/privkey.pem"
  if $directory == undef {
    $real_directory = $serts::key_directory
  } else {
    $real_directory = $directory
  }

  # If specific file names are given, use those.  Otherwise, if the hostname matches
  # the system's hostname, use server.crt.pem.  Otherwise, use
  # <hostname>.crt.pem.
  if $filename == undef {
    if ($facts['networking']['hostname'] == $keyname or $facts['networking']['fqdn'] == $keyname) and $server_hostname {
      $real_filename = $exclude_filetype ? {
        true    => 'server.key',
        default => 'server.key.pem',
      }
    } else {
      $real_filename =  $exclude_filetype ? {
        true    => "${keyname}.key",
        default => "${keyname}.key.pem",
      }
    }
  } else {
    $real_filename = $filename
  }

  # Note that links are followed, so we're creating a new file regardless of the source. This might make less sense, but
  # we need to handle permissions and ownership, which links complicate.
  file { "${real_directory}/${real_filename}":
    ensure => $ensure ? { 'present' => 'file', 'absent'  => absent, },
    path   => "${real_directory}/${real_filename}",
    source => $source,
    mode   => $mode,
    owner  => $owner,
    group  => $group,
    links  => 'follow',
  }
}
