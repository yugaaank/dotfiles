# Ryoku palette for fish and fzf. Rendered by the theme daemon; do not edit.
#
# Dropped straight into conf.d, which fish sources on its own, so nothing in the
# shipped config has to include it. Your ~/.config/fish/user.fish loads last and
# still wins.

# Syntax highlighting.
set -g fish_color_normal e2e2e2
set -g fish_color_command c6c6c6
set -g fish_color_keyword c6c6c6
set -g fish_color_quote c6c6c6
set -g fish_color_redirection c6c6c6
set -g fish_color_end c6c6c6
set -g fish_color_error c7c7c7
set -g fish_color_param e2e2e2
set -g fish_color_comment c6c6c6
set -g fish_color_selection --background=909090
set -g fish_color_operator c6c6c6
set -g fish_color_escape c6c6c6
set -g fish_color_autosuggestion c6c6c6
set -g fish_color_cancel c7c7c7
set -g fish_color_search_match --background=909090
set -g fish_color_valid_path --underline

# Completion pager.
set -g fish_pager_color_progress c6c6c6
set -g fish_pager_color_prefix c6c6c6
set -g fish_pager_color_completion e2e2e2
set -g fish_pager_color_description c6c6c6
set -g fish_pager_color_selected_background --background=909090

# fzf takes the same palette, so Ctrl-R and Ctrl-T match the terminal they open
# in. Appended to whatever options are already set rather than replacing them.
set -gx FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS \
--color=fg:#e2e2e2,bg:-1,hl:#c6c6c6 \
--color=fg+:#e2e2e2,bg+:#909090,hl+:#c6c6c6 \
--color=info:#c6c6c6,prompt:#c6c6c6,pointer:#c6c6c6 \
--color=marker:#c6c6c6,spinner:#c6c6c6,header:#c6c6c6 \
--color=border:#474747"
