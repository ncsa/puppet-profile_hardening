# @summary Remove setuid from a list of files
#
# @param files
#   List of files (with full path) that need setuid removed from them
#
# @example
#   include profile_hardening::remove_setuid
class profile_hardening::remove_setuid (
  Array[String] $files,
) {

  # CANNOT USE File RESOURCE BECAUSE SOME FILES MAY NOT ACTUALLY EXIST

  # Remove setuid/setgid from key files

  $files.each | $key, $file | {
    exec { "remove setuid from ${file}":
      path    => ['/usr/bin', '/usr/sbin'],
      command => "chmod ug-s ${file}",
      onlyif  => "find ${file} -perm -4000",
    }
  }

}
