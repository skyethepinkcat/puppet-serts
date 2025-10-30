# @summary Represents a CA bundle file.
# @param ensure Whether the CA bundle file should be present or absent.
# @param ca_bundle_name The name of the CA bundle file
# @param directory The directory where the CA bundle file should be stored.
# @param components An array of filesources that should be concatenated to form the CA bundle
#   file, in the order they should appear in the file.
# @param owner The owner of the CA bundle file.
# @param group The group of the CA bundle file.
# @param mode The file mode for the CA bundle file.
# @param certname The name of the letsencrypt certpair to use. By default, this is the system's fqdn.
define serts::bundle (
  Enum['present', 'absent'] $ensure = 'present',
  String $ca_bundle_name = $title,
  String $owner = 'root',
  String $group = 'root',
  Stdlib::Filemode $mode = '0644',
  String $certname = $facts['networking']['fqdn'],
  Array[Stdlib::Filesource] $components = [],
  Optional[Stdlib::AbsolutePath] $directory = undef,
) {
  require serts

  $real_directory = $directory ? {
    undef   => $serts::cert_directory,
    default => $directory,
  }

  if $components == [] or $ensure == 'absent' {
    Serts::Autopair <| |> ~> file { "${directory}/${ca_bundle_name}":
      ensure => $ensure ? { 'present' => 'file', 'absent'  => absent, },
      source => "${$serts::letsencrypt_directory}/live/${certname}/chain.pem",
      path   => "${real_directory}/${ca_bundle_name}",
      owner  => $owner,
      group  => $group,
      mode   => $mode,
      links  => 'follow',
    }
  } elsif size($components) == 1 {
    Serts::Autopair <| |> ~> file { "${real_directory}/${ca_bundle_name}":
      ensure => $ensure ? { 'present' => 'file', 'absent'  => absent, },
      source => $components[0],
      path   => "${real_directory}/${ca_bundle_name}",
      mode   => $mode,
      links  => 'follow',
      owner  => $owner,
      group  => $group,
    }
  } else {
    $concat_target = "${real_directory}/${ca_bundle_name}"
    Serts::Autopair <| |> ~> concat { $concat_target:
      ensure => $ensure,
      mode   => $mode,
      owner  => $owner,
      group  => $group,
    }
    unless $ensure == 'absent' {
      $components.each |Integer $index, Stdlib::Filesource $component| {
        concat::fragment { "${ca_bundle_name}-${index}":
          target => $concat_target,
          source => $component,
          order  => $index,
        }
      }
    }
  }
}
