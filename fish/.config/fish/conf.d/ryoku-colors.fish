# Ryoku palette for fish and fzf. Rendered by the theme daemon; do not edit.
#
# Dropped straight into conf.d, which fish sources on its own, so nothing in the
# shipped config has to include it. Your ~/.config/fish/user.fish loads last and
# still wins.

# Syntax highlighting.
set -g fish_color_normal e7e1df
set -g fish_color_command d9c2b8
set -g fish_color_keyword bec8cb
set -g fish_color_quote d1c4bf
set -g fish_color_redirection d2c4be
set -g fish_color_end bec8cb
set -g fish_color_error ffb4ab
set -g fish_color_param e7e1df
set -g fish_color_comment d2c4be
set -g fish_color_selection --background=473831
set -g fish_color_operator bec8cb
set -g fish_color_escape d1c4bf
set -g fish_color_autosuggestion d2c4be
set -g fish_color_cancel ffb4ab
set -g fish_color_search_match --background=473831
set -g fish_color_valid_path --underline

# Completion pager.
set -g fish_pager_color_progress d2c4be
set -g fish_pager_color_prefix d9c2b8
set -g fish_pager_color_completion e7e1df
set -g fish_pager_color_description d2c4be
set -g fish_pager_color_selected_background --background=473831

# fzf takes the same palette, so Ctrl-R and Ctrl-T match the terminal they open
# in. Appended to whatever options are already set rather than replacing them.
set -gx FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS \
--color=fg:#e7e1df,bg:-1,hl:#d9c2b8 \
--color=fg+:#e7e1df,bg+:#473831,hl+:#d9c2b8 \
--color=info:#d1c4bf,prompt:#d9c2b8,pointer:#bec8cb \
--color=marker:#bec8cb,spinner:#d1c4bf,header:#d2c4be \
--color=border:#4e4540"
