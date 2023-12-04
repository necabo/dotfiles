if "WAYLAND_DISPLAY" not-in $env and $env.XDG_VTNR == "1" {
  exec sway
}
