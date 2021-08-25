------
-- Display the download bandwidth
------

local wibox = require("wibox")
local vicious = require("vicious")

netwidget = wibox.widget.textbox()
vicious.register(netwidget,vicious.widgets.net," <b>${wlp7s0 down_kb}↓</b>↑${wlp7s0 up_kb} ",1)

return netwidget
