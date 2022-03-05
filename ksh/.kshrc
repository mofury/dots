# ksh configuration file

# Load standard configuration
. /etc/ksh.kshrc

# Load aliases
[ -f ~/.aliases ] && . ~/.aliases

# Vi mode
set -o vi

# Change prompt
PS1='\[\e[33;1m\]\u@\h:\w\$ \[\e[0;0m\]'
export PS1
