# @summary Apply generic sercurity hardening not addressed elsewhere
#
# @example
#   include profile_hardening
class profile_hardening {

  include ::profile_hardening::remove_setuid_setgid
  include ::profile_hardening::sysctl
  include ::profile_hardening::xinetd

}
