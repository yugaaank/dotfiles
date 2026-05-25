# =========================
# Fish shell configuration
# =========================

# Disable the default fish greeting (nobody asked for it)
set -g fish_greeting

# Use vim-style key bindings (optional, remove if you hate it)
fish_vi_key_bindings

# -------------------------
# Starship prompt
# -------------------------
# IMPORTANT:
# - Do NOT define fish_prompt anywhere else
# - Starship owns the prompt completely

if status is-interactive
    starship init fish | source

end

# -------------------------
# Fastfetch (run once per session)
# -------------------------
if status is-interactive
    bind ctrl-backspace backward-kill-word
    export OLLAMA_NUM_GPU=1
    if not set -q __FASTFETCH_RAN
        set -g __FASTFETCH_RAN 1
        fastfetch
    end
end

# -------------------------
# Sensible defaults
# -------------------------

# Less noisy man pages
set -gx MANPAGER "less -R"
set -Ux OLLAMA_NUM_GPU 1
# Enable colored output where possible
set -gx CLICOLOR 1

# History behavior
set -gx fish_history main

# -------------------------
# Aliases (keep them boring)
# -------------------------
alias ll="ls -lah"
alias an="prime-run env QT_QPA_PLATFORM=xcb emulator -avd Pixel_10_Pro -gpu angle"
alias bi="bun install"
alias bd="bun dev"
alias bb="bun run build"
alias fs="c && fastfetch"
alias ff="fzf"
alias c="clear"
alias ex="exit"
alias fsh="nvim ~/.config/fish/config.fish"
alias so="source ~/.config/fish/config.fish"
alias la="ls -A"
alias l="ls -CF"
alias grep="grep --color=auto"
alias df="df -h"
alias du="du -h"
alias cd="z"
# -------------------------
# PATH (append safely)
# -------------------------
fish_add_path $HOME/.bun/bin

# Example: user binaries
if test -d "$HOME/.local/bin"
    fish_add_path $HOME/.local/bin
end

# Example: cargo
if test -d "$HOME/.cargo/bin"
    fish_add_path $HOME/.cargo/bin
end

# -------------------------
# End of file
# -------------------------
zoxide init fish --cmd cd | source
#source /usr/share/nvm/init-nvm.sh
set --universal nvm_default_version lts

# Import colors from pywal/ambxst
if test -f ~/.cache/wal/colors.sh
    for line in (cat ~/.cache/wal/colors.sh)
        set -l var (echo $line | cut -d'=' -f1)
        set -l val (echo $line | cut -d'=' -f2 | tr -d '"')
        if test -n "$var"
            set -gx $var $val
        end
    end
end

set -x ANDROID_HOME $HOME/Android/Sdk
set -x ANDROID_SDK_ROOT $HOME/Android/Sdk
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/platform-tools
fish_add_path $ANDROID_HOME/cmdline-tools/latest/bin
