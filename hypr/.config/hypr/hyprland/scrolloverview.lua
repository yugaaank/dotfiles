-- Scrolloverview plugin configuration
hl.config({
    plugin = {
        scrolloverview = {
            gesture_distance = 300,
            scale = 0.5,
            workspace_gap = 100,
            layout = "vertical",
            wallpaper = 0,
            blur = false,

            shadow = {
                enabled = false,
                range = 50,
                render_power = 3,
                color = 0xee1a1a1a,
            },
        },
    },
})

hl.define_submap("scrolloverview", function()
    hl.bind("escape", hl.plugin.scrolloverview.overview("off"))
end)
