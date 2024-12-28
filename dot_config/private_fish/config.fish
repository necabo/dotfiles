if status is-login
    if test -z "$WAYLAND_DISPLAY" -a "$XDG_VTNR" = 1
        exec sway
    end
    set -Ux SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket
end

fish_add_path ~/bin
fish_add_path ~/.cargo/bin

if status is-interactive
    if [ "$TERM_PROGRAM" != WezTerm ] && not set -q TMUX
        exec tmux
    end

    set -gx EDITOR nvim
    set -gx LESS -R
    set -gx PAGER less
    set -gx GPG_TTY (tty)

    abbr -a l 'ls -AlGh'
    abbr -a vim nvim
    abbr -a yay paru

    starship init fish | source
end
