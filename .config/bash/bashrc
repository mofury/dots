#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load aliases
source ~/.config/aliasrc

# Vi mode
set -o vi

# Configure prompt
PS1="[\[$(tput sgr0)\]"

# Change color if called from root
case "$(whoami)" in
"root")
	PS1+="\[\033[38;5;03m\]\u\[$(tput sgr0)\]" ;;
*)
	PS1+="\[\033[38;5;10m\]\u\[$(tput sgr0)\]" ;;
esac
PS1+="\[\033[38;5;15m\]:\[$(tput sgr0)\]"
PS1+="\[\033[38;5;12m\]\W\[$(tput sgr0)\]"
PS1+="\[\033[38;5;15m\]]$ \[$(tput sgr0)\]"
export PS1


# Base 16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# Fix locale
#unset LANG
#source /etc/profile.d/locale.sh
