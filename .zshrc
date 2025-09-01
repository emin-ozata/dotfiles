# Initialize Oh My Posh with the custom theme
eval "$(oh-my-posh init zsh --config ~/.config/omp/config.json)"

# Optional: Enable command completion
autoload -U compinit
compinit

# Optional: Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Optional: Better history configuration
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh)"
fi

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

	autoload -Uz compinit
	compinit
fi

# Key binding
bindkey "\e[1;3D" backward-word     # ⌥←
bindkey "\e[1;3C" forward-word      # ⌥→
bindkey "^[[1;9D" beginning-of-line # cmd+←
bindkey "^[[1;9C" end-of-line       # cmd+→


# EZA
export EZA_CONFIG_DIR="$HOME/.config/eza"

# Alias
alias ls='eza --icons --color=always'
alias la='eza -lagX --icons --color=always'
alias cl='clear;clear'
alias dr='docker run --rm -i -t'
alias dx='docker exec -i -t'
alias db='docker build -t'
alias cat='bat'

. "$HOME/.local/bin/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
