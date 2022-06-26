local M = {}

M.ui = {
   theme = "gruvbox",
}


-- custom plugins
local pluginConfigs = require "custom.plugins.configs"
M.plugins = {
  user = require "custom.plugins",
  override = {
   ["nvim-telescope/telescope.nvim"] = pluginConfigs.telescope,
  }
}

-- custom key mappings
M.mappings = require "custom.mappings"

return M
