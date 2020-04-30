# some defaults
export LANG=en_us.UTF8
export EDITOR=vim
export BROWSER=firefox
export TERM=st

# add ~/bin to $PATH
export PATH="$HOME/bin:$PATH"

# if logging in in tty start x
if [[ "$(tty)" = "/dev/tty1" ]]; then
    pgrep bspwm || startx
fi
