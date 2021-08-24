local awful = require("awful")
local beautiful = require("beautiful")
local wibox = require("wibox")
local gears = require("gears")
local dpi = beautiful.xresources.apply_dpi
local screen = awful.screen.focused()

local vicious = require("vicious")


local cpuwidget = awful.widget.graph()
cpuwidget:set_width(50)
cpuwidget:set_background_color"#283039"
cpuwidget:set_color{ type = "linear", from = { 0, 0 }, to = { 50, 0 },
                     stops = { { 0, "#FF5656" },
                               { 0.5, "#88A175" },
                               { 1, "#AECF96" } } }
vicious.register(cpuwidget, vicious.widgets.cpu, "$1", 3)

return cpuwidget
