if status is-login
  if test -z "$WAYLAND_DISPLAY" -a "$XDG_VTNR" = 1
    exec sway
  end
end

fish_add_path ~/bin
fish_add_path ~/.cargo/bin

if status is-interactive
  if [ "$TERM_PROGRAM" != "WezTerm" ] && not set -q TMUX
    exec tmux
  end

  set -gx EDITOR nvim
  set -gx LESS -R
  set -gx PAGER less

  abbr -a l 'ls -AlGh'
  abbr -a vim 'nvim'

  starship init fish | source
end
