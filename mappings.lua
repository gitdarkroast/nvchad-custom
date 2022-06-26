-- custom/mappings.lua
local M = {}

M.general = {
  n = {
    -- Suppress arrow keys
    ["<Up>"] = { "<Nop>", "Arrow key disabled."},
    ["<Down>"] = { "<Nop>", "Arrow key disabled."},
    ["<Right>"] = { "<Nop>", "Arrow key disabled."},
    ["<Left>"] = { "<Nop>", "Arrow key disabled."},
  },
  v = {
    ["<"] = { "<gv", "Continous indenting"},
    [">"] = { ">gv", "Continous indenting"},
  },
}

M.nvimtree = {
   n = {
      ["<leader>ft"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
   },
}

M.telescope = {
  n = {
      ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "   live grep" },

      -- git
      ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "   git commits" },
      ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "  git status" },
  }
}

return M
