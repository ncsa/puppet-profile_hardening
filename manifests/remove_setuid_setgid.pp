# @summary Remove setuid and setgid from a list of files
#
# @param files
#   List of files (with full path) that need setuid and setgid removed from them
#
# @example
#   include profile_hardening::remove_setuid_setgid
class profile_hardening::remove_setuid_setgid (
  Array[String] $files,
) {

  # CANNOT USE File RESOURCE BECAUSE SOME FILES MAY NOT ACTUALLY EXIST

  # Remove setuid/setgid from key files

  $files.each | $key, $file | {
    exec { "remove setuid and setgid from ${file}":
      path    => ['/usr/bin', '/usr/sbin'],
      command => "chmod ug-s ${file}",
      onlyif  => "test `find ${file} -perm -4000 -o -perm -2000 | wc -l` -gt 0",
    }
  }

}
