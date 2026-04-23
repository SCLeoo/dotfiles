## 🐚 Bash Profile (SRE Workflow)

### Features:
- **Smart History Search**: Type the start of a command and use **Up/Down Arrows** to search through history.
- **Persistent History**: Increased buffer size and "append" mode to prevent losing commands across multiple SSH sessions.
- **Starship Integration**: Automatic prompt initialization.

Add the following to your `~/.bashrc` :

```bash
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
```
