# @summary Represents a CA bundle file.
# @param ensure Whether the CA bundle file should be present or absent.
# @param ca_bundle_name The name of the CA bundle file
# @param directory The directory where the CA bundle file should be stored.
# @param components An array of filesources that should be concatenated to form the CA bundle
#   file, in the order they should appear in the file.
# @param owner The owner of the CA bundle file.
# @param group The group of the CA bundle file.
# @param mode The file mode for the CA bundle file.
# @param automatic_certpair The fqdn of the certpair whose chain.pem should be used as the bundle if no components are given.
define serts::bundle (
  Enum['present', 'absent'] $ensure = 'present',
  String $ca_bundle_name = $title,
  String $owner = 'root',
  String $group = 'root',
  Stdlib::Filemode $mode = '0644',
  String $automatic_certpair = $facts['networking']['fqdn'],
  Optional[Array[Stdlib::Filesource]] $components = undef,
  Optional[Stdlib::AbsolutePath] $directory = undef,
) {
  require serts

  $real_directory = $directory ? {
    undef   => $serts::cert_directory,
    default => $directory,
  }

  # If no components are given and we want the file to be present, use the default file
  if $components == [] and $ensure != 'absent' {
    Serts::Autopair <| |> ~> file { "${real_directory}/${ca_bundle_name}":
      ensure => file,
      source => "${$serts::letsencrypt_directory}/live/${automatic_certpair}/chain.pem",
      path   => "${real_directory}/${ca_bundle_name}",
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
