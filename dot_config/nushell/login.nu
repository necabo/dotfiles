# configure locale manually (see https://github.com/nushell/nushell/issues/7941)
$env.LANG = "en_US.UTF-8"
$env.LC_ALL = "en_US.UTF-8"

if "WAYLAND_DISPLAY" not-in $env and $env.XDG_VTNR == "1" {
  exec sway
}
