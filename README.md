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

The goal is that no paramters are required to be set. The default paramters should work for most NCSA deployments out of the box.


## Dependencies

N/A


## Reference

See: [REFERENCE.md](REFERENCE.md)

### class profile_hardening::remove_setuid (
-  Array[ String ] $files,

