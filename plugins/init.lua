-- custom plugins
return {
   -- Fast cursor movement
   ["ggandor/lightspeed.nvim"] = {
      config = function()
         require "custom.plugins.lightspeed"
      end,
   },
   -- color theme
   ["EdenEast/nightfox.nvim"] = {
      config = function()
         require "custom.plugins.nightfox"
      end,
   },
   -- wild menu on steroids
   ["gelguy/wilder.nvim"] = {
      config = function()
         require "custom.plugins.wilder"
      end,
   },
   ["romgrk/fzy-lua-native"] = {},
   -- buffer plugin
   ["noib3/nvim-cokeline"] = {
      config = function()
         require "custom.plugins.cokeline"
      end,
   },
   -- Syntax highlighting
   ["jose-elias-alvarez/null-ls.nvim"] = {
      config = function()
         require "custom.plugins.null-ls"
      end,
   },
}
