# some defaults
export LANG=de_DE.UTF8
export EDITOR=vim
export BROWSER=qutebrowser
export TERM=alacritty

# load german keymap
loadkeys us-acentos

# add ~/bin to $PATH
export PATH="$HOME/bin:$PATH"

# if logging in in tty start x
if [[ "$(tty)" = "/dev/tty1" ]]; then
    pgrep bspwm || startx
fi
