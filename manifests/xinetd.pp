# @summary Configure xinetd
#
# @param disable_xinetd_when_unused
#   Disables xinetd if there are no services enabled under /etc/xinetd.d
#
# @example
#   include profile_hardening::xinetd
class profile_hardening::xinetd (
  Boolean $disable_xinetd_when_unused,
) {
  if ( $disable_xinetd_when_unused ) {
    exec { 'disable_xinetd':
      path    => ['/bin', '/usr/bin'],
      command => 'systemctl stop xinetd; systemctl disable xinetd',
      unless  => 'egrep -Riw \'^\s*disable\s*=\s*no\' /etc/xinetd.d',
      onlyif  => 'systemctl is-enabled xinetd',
    }
  }
}
