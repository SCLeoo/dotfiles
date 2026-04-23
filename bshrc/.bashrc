# --- Bash History Settings (SRE Optimized) ---
# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# Append to the history file, don't overwrite it
shopt -s histappend
# Huge history size for better predictions/search
HISTSIZE=10000
HISTFILESIZE=20000

# --- History Search (Like PSReadLine Up/Down) ---
# This allows you to type 'docker' and hit Up to see only docker commands
if [[ $- == *i* ]]; then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

# --- Welcome Message ---
# Using ANSI color codes (36 is Cyan)
printf "\e[1;36mWelcome back, SCLeo! Bash profile loaded.\e[0m\n"

# --- Starship ---
if command -v starship &> /dev/null; then
    eval "$(starship init bash)"
fi
