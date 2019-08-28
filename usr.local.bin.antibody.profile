# vim:syntax=apparmor

#include <tunables/global>

/usr/local/bin/antibody flags=(complain) {
  #include <abstractions/base>
  #include <abstractions/nameservice>
  #include <abstractions/ssl_certs>
  #include <abstractions/totem>
  #include <abstractions/user-tmp>

  /lib/x86_64-linux-gnu/ld-*.so mr,
  /usr/bin/git mrix,
  /usr/lib/git-core/git rix,
  /usr/lib/git-core/git-remote-* mrix,
  /usr/local/bin/antibody r,
  @{HOME}/.cache/antibody/** rw,

}
