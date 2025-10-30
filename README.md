# serts

A Puppet module to simplify SSL certificate management using Let's Encrypt. This module provides convenient defined types and classes for managing SSL certificates, private keys, certificate chains, and bundles. Opinionated by default, but very flexible with parameters.

## Description

The `serts` module adds abstraction over the `puppet/letsencrypt` module to simplify the placement of generated certificates in various
formats, without compromising flexibility.

## Requirements

- Puppet 7.0 or higher
- puppetlabs/stdlib (>= 9.0.0)
- puppet/letsencrypt (>= 12.0.0)
- puppetlabs/inifile (>= 2.5.0)
- puppet/epel (>= 3.0.1)
- puppet/concat (>= 6.0.0)

## Installation

Install the module from the Puppet Forge (not currently available):

```bash
puppet module install skye-serts
```

Or add it to your Puppetfile:

### From Puppet Forge

```ruby
mod 'skye-serts'
```

### From Github

```Puppetfile
mod 'serts',
  :git => 'gogs@git.cs.umbc.edu:CSEE/puppet-modules/serts.git',
  :ref => 'git@github.com:skyethepinkcat/puppet-serts.git'

```

## Quick Start

Basic certificate management:

```puppet
include serts

serts::certpair { 'example.com':
  alt_names => ['www.example.com', 'api.example.com'],
}
```

This will provision a Let's Encrypt certificate for `example.com` with the specified alternative names and place the certificate and private key in the appropriate system directories.

## Documentation

Documentation is available on [GitHub Pages](https://skyethepinkcat.github.io/puppet-serts/) or in [./REFERENCE.md].

## Development

This module is developed and maintained on GitHub. Contributions are welcome through pull requests.

### Testing

Run the test suite:

```bash
pdk test unit
```

### Linting

Check code style:

```bash
pdk validate
```

## License

This module is licensed under the MIT License. See the LICENSE file for details.
