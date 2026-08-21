# Fish Shell Configuration

# --- Interactive Session Settings ---
if status is-interactive
    # Disable welcome greeting
    set -g fish_greeting

    # Erase universal key bindings at startup (workaround for older fish versions)
    set --erase --universal fish_key_bindings
    # Enable Vim-style key bindings
    fish_vi_key_bindings

    # Backspace behaves like bash on ctrl-backspace
    bind ctrl-backspace backward-kill-word

    # Initialize Starship prompt
    if type -q starship
        starship init fish | source
    end

    fastfetch
    # Initialize Zoxide (smarter cd)
    if type -q zoxide
        zoxide init fish | source
        alias cd="z"
    end

    # --- Aliases ---
    alias c="clear"
    alias ex="exit"
    alias nv="nvim ."
    alias grep="grep --color=auto"
    alias df="df -h"
    alias du="du -h"
    alias la="ls -A"
    alias ll="ls -lah"
    alias l="ls -CF"

    # Developer & Shell shortcuts
    alias bi="bun install"
    alias bd="bun dev"
    alias bb="bun run build"
    alias fs="c && fastfetch"
    alias ff="fzf"
    alias fsh="nvim ~/.config/fish/config.fish"
    alias so="source ~/.config/fish/config.fish"
    alias gay="agy"
    alias an="prime-run env QT_QPA_PLATFORM=xcb emulator -avd Pixel_10_Pro -gpu angle"
end

# --- Environment Variables ---
set -gx CLICOLOR 1
set -gx fish_history main
set -gx MANPAGER "less -R"
set -gx OLLAMA_NUM_GPU 1
set -gx TIKTOKEN_CACHE_DIR $HOME/.cache/tiktoken
set -gx ANDROID_HOME $HOME/Android/Sdk
set -gx ANDROID_SDK_ROOT $HOME/Android/Sdk
set -gx nvm_default_version lts

# --- PATH Configuration ---
test -d $HOME/.bun/bin; and fish_add_path $HOME/.bun/bin
test -d $HOME/.local/bin; and fish_add_path $HOME/.local/bin
if test -n "$ANDROID_HOME"
    test -d $ANDROID_HOME/emulator; and fish_add_path $ANDROID_HOME/emulator
    test -d $ANDROID_HOME/platform-tools; and fish_add_path $ANDROID_HOME/platform-tools
    test -d $ANDROID_HOME/cmdline-tools/latest/bin; and fish_add_path $ANDROID_HOME/cmdline-tools/latest/bin
end
test -d $HOME/.opencode/bin; and fish_add_path $HOME/.opencode/bin

# Always return success
true
