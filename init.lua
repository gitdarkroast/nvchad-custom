-- custom/init.lua
local M = {}
M.options = {
  user = function ()
    require("custom.myoptions")
  end
}

return M
