#!/bin/sh

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache

# Rust and Cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export CARGO_HOME="$XDG_DATA_HOME"/cargo

# GnuPG
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
alias gpg="gpg2 --homedir $XDG_DATA_HOME/gnupg"

# GTK
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

# ipython
export IPYTHONDIR="$XDG_CONFIG_HOME"/ipython

# disable less history
export LESSHISTFILE=-

# Pass
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass

# Bash
export HISTFILE="$XDG_DATA_HOME"/bash/history
alias bash="bash --init-file $XDG_CONFIG_HOME/bash/bashrc"

# wget
alias wget="wget --hsts-file="$XDG_CACHE_HOME/wget-hsts

# zsh
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE="$XDG_DATA_HOME"/zsh/history
