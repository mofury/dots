# Environment variables

# Executable path
export PATH=$HOME/.local/bin:$HOME/.cargo/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/games

# Include ghcup-env
[ -f "/home/moritz/.ghcup/env" ] && source "/home/moritz/.ghcup/env"

# Language
export LANG=de_DE.UTF-8

# Default programs
export VISUAL=nvim
export EDITOR=$VISUAL
export FCEDIT=$EDITOR
export BROWSER=qutebrowser

