# Ryoku palette for fish and fzf. Rendered by the theme daemon; do not edit.
#
# Dropped straight into conf.d, which fish sources on its own, so nothing in the
# shipped config has to include it. Your ~/.config/fish/user.fish loads last and
# still wins.

# Syntax highlighting.
set -g fish_color_normal e7e1de
set -g fish_color_command d7c3af
set -g fish_color_keyword bfc7d1
set -g fish_color_quote d0c5bb
set -g fish_color_redirection d0c5ba
set -g fish_color_end bfc7d1
set -g fish_color_error ffb4ab
set -g fish_color_param e7e1de
set -g fish_color_comment d0c5ba
set -g fish_color_selection --background=473a2b
set -g fish_color_operator bfc7d1
set -g fish_color_escape d0c5bb
set -g fish_color_autosuggestion d0c5ba
set -g fish_color_cancel ffb4ab
set -g fish_color_search_match --background=473a2b
set -g fish_color_valid_path --underline

# Completion pager.
set -g fish_pager_color_progress d0c5ba
set -g fish_pager_color_prefix d7c3af
set -g fish_pager_color_completion e7e1de
set -g fish_pager_color_description d0c5ba
set -g fish_pager_color_selected_background --background=473a2b

# fzf takes the same palette, so Ctrl-R and Ctrl-T match the terminal they open
# in. Appended to whatever options are already set rather than replacing them.
set -gx FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS \
--color=fg:#e7e1de,bg:-1,hl:#d7c3af \
--color=fg+:#e7e1de,bg+:#473a2b,hl+:#d7c3af \
--color=info:#d0c5bb,prompt:#d7c3af,pointer:#bfc7d1 \
--color=marker:#bfc7d1,spinner:#d0c5bb,header:#d0c5ba \
--color=border:#4d453e"
