# Ryoku palette for fish and fzf. Rendered by the theme daemon; do not edit.
#
# Dropped straight into conf.d, which fish sources on its own, so nothing in the
# shipped config has to include it. Your ~/.config/fish/user.fish loads last and
# still wins.

# Syntax highlighting.
set -g fish_color_normal e5e2e4
set -g fish_color_command bfc5e1
set -g fish_color_keyword dcc399
set -g fish_color_quote c5c6d2
set -g fish_color_redirection c6c6cd
set -g fish_color_end dcc399
set -g fish_color_error ffb4ab
set -g fish_color_param e5e2e4
set -g fish_color_comment c6c6cd
set -g fish_color_selection --background=9fa5c0
set -g fish_color_operator dcc399
set -g fish_color_escape c5c6d2
set -g fish_color_autosuggestion c6c6cd
set -g fish_color_cancel ffb4ab
set -g fish_color_search_match --background=9fa5c0
set -g fish_color_valid_path --underline

# Completion pager.
set -g fish_pager_color_progress c6c6cd
set -g fish_pager_color_prefix bfc5e1
set -g fish_pager_color_completion e5e2e4
set -g fish_pager_color_description c6c6cd
set -g fish_pager_color_selected_background --background=9fa5c0

# fzf takes the same palette, so Ctrl-R and Ctrl-T match the terminal they open
# in. Appended to whatever options are already set rather than replacing them.
set -gx FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS \
--color=fg:#e5e2e4,bg:-1,hl:#bfc5e1 \
--color=fg+:#e5e2e4,bg+:#9fa5c0,hl+:#bfc5e1 \
--color=info:#c5c6d2,prompt:#bfc5e1,pointer:#dcc399 \
--color=marker:#dcc399,spinner:#c5c6d2,header:#c6c6cd \
--color=border:#46464d"
