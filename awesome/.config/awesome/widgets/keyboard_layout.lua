-------------------------------------------------
-- Keyboard Layoud widget with chaning capabilities
-------------------------------------------------


local awful = require("awful")
local beautiful = require("beautiful")
local wibox = require("wibox")
local gears = require("gears")
local dpi = beautiful.xresources.apply_dpi
local screen = awful.screen.focused()


-- ===================================================================
-- Widget Creation
-- ===================================================================


local kbdcfg = {}
kbdcfg.cmd = "setxkbmap"
kbdcfg.layout = { { "ar", "" }, { "us", "alt-intl" } }
kbdcfg.current = 2  -- de is our default layout
kbdcfg.widget = wibox.widget.textbox()
kbdcfg.widget:set_text(" " .. kbdcfg.layout[kbdcfg.current][1] .. " ")
kbdcfg.switch = function ()
  kbdcfg.current = kbdcfg.current % #(kbdcfg.layout) + 1
  local t = kbdcfg.layout[kbdcfg.current]
  kbdcfg.widget:set_text(" " .. t[1] .. " ")
  os.execute( kbdcfg.cmd .. " " .. t[1] .. " " .. t[2] )
end


-- Mouse bindings
kbdcfg.widget:buttons(
 awful.util.table.join(awful.button({ }, 1, function () kbdcfg.switch() end))
)

return kbdcfg
