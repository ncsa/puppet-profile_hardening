# profile_hardening

![pdk-validate](https://github.com/ncsa/puppet-profile_hardening/workflows/pdk-validate/badge.svg)
![yamllint](https://github.com/ncsa/puppet-profile_hardening/workflows/yamllint/badge.svg)

NCSA Common Puppet Profiles - configure miscellaneous security hardening


## Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with profile_hardening](#setup)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Dependencies](#dependencies)
1. [Reference](#reference)


## Description

This puppet profile applies some generic sercurity hardening that isn't addressed in other NCSA shared Puppet profiles.


## Setup

Include profile_hardening in a puppet profile file:
```
include ::profile_hardening
```


## Usage

The goal is that no parameters are required to be set. The default parameters should work for most NCSA deployments out of the box.

To set temporary or Ad-hoc sysctl settings related to security, you can follow this Hiera example:
```yaml
profile_hardening::sysctl::settings:
  "kernel.param_to_configure":                # name of the kernel parameter to configure
    comment: "reference a ticket, CVE, etc."
    ensure: "present"
    target: "/etc/sysctl.d/50-filename.conf"  # filename to put the setting in
    value: <number>                           # value, generally an integer
```


## Dependencies

[herculesteam/augeasproviders_sysctl](https://forge.puppet.com/modules/herculesteam/augeasproviders_sysctl) Puppet module


## Reference

See: [REFERENCE.md](REFERENCE.md)

### class profile_hardening::remove_setuid_setgid (
-  Array[ String ] $files,

