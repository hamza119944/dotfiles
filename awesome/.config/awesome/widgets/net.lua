------
-- Display the download bandwidth
------

local wibox = require("wibox")
local vicious = require("vicious")

netwidget = wibox.widget.textbox()
vicious.register(netwidget,vicious.widgets.net," ${wlp7s0 down_kb}↓↑${wlp7s0 up_kb} ",1)

return netwidget
