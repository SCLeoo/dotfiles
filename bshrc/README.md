## 🐚 Bash Profile (SRE Workflow)

### Features:
- **Smart History Search**: Type the start of a command and use **Up/Down Arrows** to search through history.
- **Persistent History**: Increased buffer size and "append" mode to prevent losing commands across multiple SSH sessions.
- **Starship Integration**: Automatic prompt initialization.

Add the following to your `~/.bashrc` :

```bash
# --- History Search (Like PSReadLine Up/Down) ---
# This allows you to type 'docker' and hit Up to see only docker commands
if [[ $- == *i* ]]; then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

# --- Pretty ls (you need to install if not present) ---
alias ls='eza --icons=always'

# --- Welcome Message ---
# Using ANSI color codes (36 is Cyan)
printf "\e[1;36mWelcome back, SCLeo! Bash profile loaded.\e[0m\n"

# --- Starship ---
if command -v starship &> /dev/null; then
    eval "$(starship init bash)"
fi
```
