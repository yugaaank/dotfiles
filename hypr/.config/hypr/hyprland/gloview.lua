--[[ Gloview plugin configuration
hl.config({
    plugin = {
        gloview = {
            layout = "rows",
            gap = 34,
            padding = 80,
            padding_top = 40,
            padding_bottom = 70,
            max_scale = 1.0,
            duration = 200,
            preview_round = 12,
            blur = 1,

            anchor = "top",
            strip_offset = 0,
            strip_height = 150,
            strip_margin = 22,
            strip_gap = 18,
            strip_card_round = 10,

            focus_follows_mouse = 1,
            scroll_switches_workspace = 1,
            passthrough_keys = 1,
            exit_on_click = 1,
            exit_on_switch = 0,

            key_close = "escape",
            key_next_workspace = "tab",
            key_prev_workspace = "shift+tab",
            key_activate = "enter",
            key_close_window = "d",
            key_left = "left",
            key_right = "right",
            key_up = "up",
            key_down = "down",
            key_desktop = "shift",
            key_all_workspaces = "a",
            key_workspace = "1,2,3,4,5,6,7,8,9,0",

            show_all_workspaces = 0,
            show_empty = 1,
            show_special = 0,
            strip_all_card = 1,
            drag_to_swap = 1,
            switch_on_drop = 0,
            switch_on_new_workspace = 1,

            hide_top_layers = 0,
            hide_overlay_layers = 0,
            above_namespaces = "",
            debug_logs = 0,

            select_border_size = 3,
            select_border = 0xf066ccff,
            close_button_color = 0xe6e23b3b,
            backdrop_color = 0x73070a10,
            strip_band_color = 0x24ffffff,
            strip_card_color = 0x3a0e131c,
            strip_active_color = 0x4d1c2c44,
            strip_active_border = 0xf0ffffff,
            strip_hover_border = 0x80ffffff,
            strip_active_border_size = 2,
            strip_hover_border_size = 2,
            strip_plus_color = 0xd0eef4ff,
            shadow_color = 0x70000000,
            hover_border = 0xf0ffffff,
            hover_border_size = 3,
        },
    },
})

hl.gesture({
    fingers = 4,
    direction = "up",
    action = function()
        hl.exec_cmd("noctalia msg panel-toggle gloview")
    end,
})
--]]
