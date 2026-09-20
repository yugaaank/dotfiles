function fish_prompt
    set -l last_status $status

    set -l path $PWD
    if test "$HOME" = "$path"
        set path "~"
    else if string match -q -- "$HOME/*" "$path"
        set path "~/"(string replace -- "$HOME/" '' "$path")
    end

    set -l parent ""
    set -l directory $path
    if string match -q -- "*/*" "$path"; and test "$path" != "/"
        set parent (string replace -r -- '/[^/]*$' '/' "$path")
        set directory (string replace -r -- '.*/' '' "$path")
    end

    set -l branch ""
    if command -q git
        set branch (command git symbolic-ref --quiet --short HEAD 2>/dev/null)
        if test -z "$branch"
            set branch (command git rev-parse --short HEAD 2>/dev/null)
            if test -n "$branch"
                set branch "detached:$branch"
            end
        end
    end

    set -l width 80
    if test -n "$COLUMNS"; and string match -qr -- '^[0-9]{1,4}$' "$COLUMNS"; and test "$COLUMNS" -gt 0 2>/dev/null
        set width $COLUMNS
    end

    set -l suffix_width (math (string length -- "$branch") + 5)
    if test -n "$branch"
        # bracket pair already counted above
    else
        # still 5 for the empty bracket pair " [  ] "
    end
    if test "$last_status" -ne 0 2>/dev/null
        set -l err "exit $last_status"
        set suffix_width (math $suffix_width + (string length -- "$err") + 1)
    end

    set -l rule_width (math $width - (string length -- "$path") - $suffix_width - 2)
    if test "$rule_width" -lt 3
        set rule_width 3
    end

    set -l rule (string repeat -n $rule_width -- '─')

    # Colors matching tsugumori palette
    set -l c_muted   (set_color 92908D)
    set -l c_text    (set_color E8E8E8)
    set -l c_rule    (set_color 45413B)
    set -l c_red     (set_color CC1515)
    set -l c_reset   (set_color normal)

    # Line 1: parent directory rule branch
    printf '%s%s%s %s %s[ %s%s%s%s ]%s' \
        "$c_muted" "$parent" \
        "$c_text" "$directory" \
        "$c_rule" "$rule" \
        "$c_red" \
        "$c_muted" "$branch" \
        "$c_red"

    if test "$last_status" -ne 0 2>/dev/null
        printf ' %sexit %d' "$c_red" "$last_status"
    end

    printf '%s\n' "$c_reset"

    # Line 2: red corner
    printf '%s└%s ' "$c_red" "$c_reset"
end
