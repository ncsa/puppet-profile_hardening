# @summary Set Ad-hoc sysctl settings
#
# Set Ad-hoc sysctl settings
#
# @param settings
#   Raw settings for sysctl resources.
#
# @example
#   include profile_hardening::sysctl
class profile_hardening::sysctl (

  Hash $settings,

) {

  $settings.each | $name, $params |
  {
    sysctl { $name:
      * => $params,
    }
  }

}
