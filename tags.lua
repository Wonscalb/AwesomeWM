tyrannical = require("tyrannical")

-- {{{ Tags
tyrannical.tags = {
    {
        name      = "www",
        init      = true,
        exclusive = true,
        screen    = screen.count()>1 and 2 or 1,
        layout    = awful.layout.suit.max,
        class     = {"Firefox"}
    },
    {
        name      = "term",
        layout    = awful.layout.suit.fair,
        init      = true,
        exclusive = true,
        screen    = {1,2},
        class     = {"urxvt","XTerm","terminator"}
    },
    {
        -- Tag created where thunar was called. Destroyed on the fly
        name      = "fs",
        volatile  = true,
        layout    = awful.layout.suit.max,
        exclusive = true,
        exec_once = {"thunar"},
        class     = {"Thunar"}
    },
    {
        -- TODO : Check if vim is acceptable in class
        name      = "dev",
        volatile  = true,
        layout    = awful.layout.suit.tile,
        screen    = {1,2},
        exclusive = true,
        class     = {"subl3", "vim", "gvim"}
    },
    {
        name      = "media",
        init      = true,
        layout    = awful.layout.suit.max,
        exclusive = true,
        exec_once = "spotify",
        volatile  = true,
        screen    = screen.count()>1 and 1 or 2,
        class     = {"vlc", "spotify", "ncmpcpp"}
    },
    {
        name      = "IM",
        init      = true,
        layout    = awful.layout.suit.tile,
        exec_once = "rambox",
        screen    = 1,
        volatile  = true,
        exclusive = true,
        class     = {"rambox", "thunderbird"}
    }
}

tyrannical.properties.intrusive = {
    "shutter", "feh", "xterm"
}

tyrannical.properties.floating = {
    "feh", "shutter", "xterm"
}

tyrannical.properties.ontop = {
    "shutter", "xterm"
}

tyrannical.properties.centered = {
   "shutter", "xterm"
}

tyrannical.settings.block_children_focus_stealing = true
tyrannical.settings.group_children = true

-- }}}

