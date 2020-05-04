#
# ~/.zprofile
#

# some defaults
export LANG=en_US.utf8
export EDITOR=vim
export BROWSER=qutebrowser
export TERMINAL=st

# if ~/.local/bin exists add it to $PATH
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
# add ~/.cargo/bin to $PATH
PATH="$HOME/.cargo/bin:$PATH"
PATH="/snap/bin:$PATH"
export PATH

# if logging in in tty start x
if [[ "$(tty)" = "/dev/tty1" ]]; then
    pgrep bspwm || startx
fi
