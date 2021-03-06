#
# ~/.zprofile
#

# some defaults
export LANG=de_DE.utf8
export EDITOR=nvim
export BROWSER=qutebrowser
export BROWSER_ALT=firefox
export TERMINAL=alacritty

# if ~/.local/bin exists add it to $PATH
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/.local/bin/scripts" ] && PATH="$HOME/.local/bin/scripts:$PATH"
# add cargo to $PATH
PATH="$HOME/.local/share/cargo/bin:$PATH"
# add go to $PATh
PATH="$HOME/go/bin:$PATH"
export PATH

# if logging in in tty start x
if [[ "$(tty)" = "/dev/tty1" ]]; then
    pgrep bspwm || startx
fi
