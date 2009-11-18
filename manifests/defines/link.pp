# common/manifests/defines/link.pp -- create a link
#
# Copyleft (C) 2009 immerdaadmin <admin@immerda.ch>
# See LICENSE for the full license granted to you.

# Usage:
# link { "/usr/bin/convert": target => "/usr/local/bin/convert" }
# e.g. equivalent to bash# ln -s /usr/bin/convert /usr/local/bin/convert

define link(
    $target = 'absent'
) {
    if ($target != 'absent') {
      file { "$name":
            ensure => link,
            target => "${target}"
      }
    }else{
      file { "$name":
            ensure => absent,
            recurse => true,
            force => true
      }
    }
}

