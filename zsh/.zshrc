# The following lines were added by compinstall
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format 'Completing %d: '
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd .. directory
zstyle ':completion:*' insert-unambiguous false
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select=4
zstyle ':completion:*' original true
zstyle ':completion:*' prompt 'Correct %e errors: '
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/moritz/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.local/cache/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd nomatch
unsetopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install

# Set prompt
autoload -U colors && colors
export PS1="%{$fg_bold[white]%}%n@%m:%2~%# %{$reset_color%}"

# Color less output
# bold
export LESS_TERMCAP_md=$(tput bold; tput setaf 4)
# standout
export LESS_TERMCAP_so=$(tput bold; tput setaf 3)
# underline
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 2)
# end bold
export LESS_TERMCAP_me=$(tput sgr0)
# end standout
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
# end underline
export LESS_TERMCAP_ue=$(tput sgr0)

# Source aliases
[ -f ~/.aliases ] && . ~/.aliases

