--[[
                                             
     Powerarrow Darker Awesome WM config 2.0 
     github.com/copycat-killer               
                                             
--]]

-- {{{ Required libraries
gears     = require("gears")
awful     = require("awful")
awful.rules     = require("awful.rules")
                  require("awful.autofocus")
wibox     = require("wibox")
beautiful = require("beautiful")
naughty   = require("naughty")
lain      = require("lain")
menubar   = require("menubar")

-- }}}

require("errorhandler")
require("autorun")

-- {{{ Variable definitions

-- common
modkey     = "Mod4"
altkey     = "Mod1"
terminal   = "urxvt"
scratchpad = "xterm"
editor     = os.getenv("EDITOR") or "vim"
editor_cmd = terminal .. " -e " .. editor

-- user defined
browser    = "iceweasel"
gui_editor = "gvim"
graphics   = "gimp"
mail       = terminal .. " -e mutt "
musicplr   = terminal .. " -g 130x34-320+16 -e ncmpcpp "

-- beautiful init
beautiful.init(os.getenv("HOME") .. "/.config/awesome/themes/theme.lua")

layouts = {
    awful.layout.suit.spiral,
    awful.layout.suit.magnifier,
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal
}
-- }}}

-- {{{ Wallpaper
if beautiful.wallpaper then
    for s = 1, screen.count() do
        gears.wallpaper.maximized(beautiful.wallpaper, s, true)
    end
end
-- }}}

-- {{{ Menu
mymainmenu = awful.menu.new({ items = require("menugen").build_menu(),
                              theme = { height = 16, width = 130 }})
-- }}}

require("tags")
require("menu")
require("bar")
require("mouse")
require("keys")
require("rules")
require("signals")


