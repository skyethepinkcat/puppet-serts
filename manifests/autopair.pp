# @summary Automatically create a certpair using Certbot for the given hostname and domain. You probably want to use serts::certpair 
#   instead of this to manage the resulting cert and key files.
# @param title The name of the resource, which should be the fully qualified domain name (FQDN) for the cert.
# @param ensure Whether the certificate and key should be present or absent.
# @param fqdn The fully qualified domain name of the url the cert is for. By default, this is the title of the resource, 
#   but if the title does not contain a dot, the system's domain will be appended to it.
# @param alt_names An array of additional fqdns that should be included. If the fqdn matches
#   the system's fqdn, additional alt names will be looked up from hiera.
# @param manage_cron Whether to manage a cron job to renew the certs.
# @param cron_output Whether to output the cron job's output. Defaults to 'suppress', which means no output unless there is an error.
# @param certname The name of the cert/key to create. By default, this is the same as the fqdn.
define serts::autopair (
  Enum['present', 'absent'] $ensure = 'present',
  String $fqdn = ($title =~ /[.]/) ? { true => $title, false => "${title}.${facts['networking']['domain']}" },
  Array[Stdlib::Host] $alt_names = [],
  Boolean $manage_cron = true,
  String $certname = $fqdn,
  Optional[Enum['suppress', 'log']] $cron_output = undef,
) {
  require serts, stdlib

  $system_alt_names = $fqdn == $facts['networking']['fqdn'] ? {
    true  => $serts::alt_names,
    false => [],
  }

  if (!defined(Letsencrypt::Certonly[$fqdn])) {
    letsencrypt::certonly { $certname:
      ensure      => $ensure,
      domains     => [$fqdn] + $alt_names + $system_alt_names,
      manage_cron => $manage_cron, # Allows refreshing
      cron_output => $cron_output,
    }
  }
}
