# ~/.config/zsh/user.zsh
# User overrides for zsh — sourced last by ryoku.zsh, never touched by updates.
# Put your custom aliases, functions, exports, and keybinds here.
# This file wins over everything in ryoku.zsh and rashin.zsh.

# ------------------------------------------------------------#
# Completion
# ------------------------------------------------------------#
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes

# Case-insensitive completion
zstyle ':completion:*' matcher-list \
    'm:{a-zA-Z}={A-Za-z}' \
    'r:|[._-]=* r:|=*'

# ------------------------------------------------------------#
# Key bindings
# ------------------------------------------------------------#
bindkey -e

# Ctrl+Backspace → delete previous word
bindkey '^H' backward-kill-word

# Some terminals send this sequence for Ctrl+Backspace
bindkey '^[[3;5~' backward-kill-word

# Ctrl+Left → move one word left
bindkey '^[[1;5D' backward-word

# Ctrl+Right → move one word right
bindkey '^[[1;5C' forward-word

# Up/Down → history
bindkey '^[[A' up-line-or-history
bindkey '^[[B' down-line-or-history

# ------------------------------------------------------------#
# FZF
# ------------------------------------------------------------#
if [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
    source /usr/share/fzf/key-bindings.zsh
fi

if [[ -f /usr/share/fzf/completion.zsh ]]; then
    source /usr/share/fzf/completion.zsh
fi

# ------------------------------------------------------------#
# Fish-like aliases
# ------------------------------------------------------------#
alias ll='eza -lah --icons'
alias la='eza -la --icons'
alias l='eza -l --icons'

alias cat='bat'
alias c='clear'

alias v='nvim'
alias vi='nvim'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# ------------------------------------------------------------#
# Useful Zsh options
# ------------------------------------------------------------#
setopt AUTO_CD
setopt CORRECT
setopt CLOBBER
setopt EXTENDED_GLOB

# ------------------------------------------------------------#
# Environment
# ------------------------------------------------------------#
export EDITOR='nvim'
export VISUAL='nvim'

# ------------------------------------------------------------#
# Local configuration
# ------------------------------------------------------------#
# Put personal aliases/functions below this line.
