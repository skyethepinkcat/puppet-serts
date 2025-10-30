# @summary Represents a CA bundle file.
# @param ensure Whether the CA bundle file should be present or absent.
# @param filename The name of the outputted CA bundle file
# @param directory The directory where the CA bundle file should be stored.
# @param owner The owner of the CA bundle file.
# @param group The group of the CA bundle file.
# @param mode The file mode for the CA bundle file.
# @param certname The name of the letsencrypt certpair to use. By default, this is the system's fqdn.
define serts::chain (
  Enum['present', 'absent'] $ensure = 'present',
  String $filename = $title,
  String $owner = 'root',
  String $group = 'root',
  Stdlib::Filemode $mode = '0644',
  String $certname = $facts['networking']['fqdn'],
  Stdlib::AbsolutePath $directory = $serts::cert_directory,
) {
  require serts
  serts::bundle { $filename:
    ensure         => $ensure,
    ca_bundle_name => $filename,
    owner          => $owner,
    group          => $group,
    mode           => $mode,
    certname       => $certname,
    components     => [],
    directory      => $directory,
  }
}
