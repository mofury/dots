#
# ~/.zprofile
#

# some defaults
export LANG=en_US.utf8
export EDITOR=vim
export BROWSER=firefox
export TERMINAL=st

# add ~/bin and ~/.cargo/bin to $PATH
PATH="$HOME/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
export PATH

# if logging in in tty start x
if [[ "$(tty)" = "/dev/tty1" ]]; then
    pgrep bspwm || startx
fi
