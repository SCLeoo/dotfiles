IS_SSH=false
if [[ -n "$SSH_CONNECTION" || -n "$SSH_TTY" ]]; then
  IS_SSH=true
fi

# --- Powerlevel10k instant prompt ---
if ! $IS_SSH; then
  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi
fi

# --- Platform detection for plugin paths ---
OS="$(uname -s | tr '[:upper:]' '[:lower:]')"
if [[ "$OS" == "darwin" ]]; then
  ZSH_AUTOSUGGESTIONS="/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
  ZSH_SYNTAX_HIGHLIGHTING="/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
else
  ZSH_AUTOSUGGESTIONS="/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
  ZSH_SYNTAX_HIGHLIGHTING="/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

# --- Load Manjaro config if present ---
[[ -e /usr/share/zsh/manjaro-zsh-config ]] && source /usr/share/zsh/manjaro-zsh-config
[[ -e /usr/share/zsh/manjaro-zsh-prompt ]] && source /usr/share/zsh/manjaro-zsh-prompt

# Source Powerlevel10k if available
if [[ -f "/opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme" ]]; then
  source "/opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme"
elif [[ -f "/usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme" ]]; then
  source "/usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme"
elif [[ -f "/usr/share/powerlevel10k/powerlevel10k.zsh-theme" ]]; then
  source "/usr/share/powerlevel10k/powerlevel10k.zsh-theme"
fi

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# --- Load plugins ---
[[ -f "$ZSH_AUTOSUGGESTIONS" ]] && source "$ZSH_AUTOSUGGESTIONS"
[[ -f "$ZSH_SYNTAX_HIGHLIGHTING" ]] && source "$ZSH_SYNTAX_HIGHLIGHTING"

# --- NVM ---
export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"

# --- History setup ---
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history hist_expire_dups_first hist_ignore_dups hist_verify

# --- Keybindings for history search ---
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# --- Aliases ---
alias ls="eza --icons=always"

#--- Fortune + cowsay (must be at the end) ---
COWS=(stegosaurus actually)
RANDOM_COW=${COWS[RANDOM % ${#COWS[@]} +1]}
if command -v fortune &>/dev/null && command -v cowsay &>/dev/null; then
  fortune | cowsay -f "$RANDOM_COW"
fi

