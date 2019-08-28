# Last Modified: Sun Jun 23 23:23:25 2019
#include <tunables/global>

# vim:syntax=apparmor
# AppArmor profiles for https://github.com/isacikgoz/tldr

/usr/local/bin/tldr {
  #include <abstractions/base>
  #include <abstractions/nameservice>
  #include <abstractions/ssl_certs>
  #include <abstractions/totem>
  #include <abstractions/user-tmp>

  /dev/tty r,
  @{HOME}/.local/share/tldr/ rw,
  @{HOME}/.local/share/tldr.old/ rw,
  /lib/x86_64-linux-gnu/ld-*.so mr,
  /usr/bin/git mrix,
  /usr/lib/git-core/git rix,
  /usr/lib/git-core/git-remote-* mrix,
  /usr/local/bin/tldr r,
  @{HOME}/.local/share/tldr/** rwk,
}
