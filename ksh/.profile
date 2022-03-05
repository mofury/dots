# sh initialization

PATH=$HOME/bin:$HOME/.cargo/bin:$HOME/.local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
export PATH

# Defaults
EDITOR=nvim
FCEDIT=$EDITOR
BROWSER=qutebrowser
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
export EDITOR FCEDIT BROWSER LANG LC_ALL

# Path to ksh configuration
ENV=$HOME/.kshrc
export ENV

# Start X server
[ $(tty) = "/dev/ttyC0" ] && startx
