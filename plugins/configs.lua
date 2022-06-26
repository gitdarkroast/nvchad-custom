-- custome/configs.lua
-- NVChad plugins which we want to override
local M = {}

M.telescope = {
  extensions = {
    fzy_native = { override_generic_sorter = false, override_file_sorter = true },
  }
}

return M
