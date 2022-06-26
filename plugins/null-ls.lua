local nls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
nls.setup {
   debounce = 150,
   save_after_format = false,
   sources = {
      nls.builtins.formatting.prettierd.with {
         extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
      },
      nls.builtins.formatting.stylua,
      nls.builtins.formatting.black.with { extra_args = { "--fast" } },
      nls.builtins.formatting.fish_indent,
      nls.builtins.formatting.fixjson.with { filetypes = { "jsonc" } },
      nls.builtins.formatting.eslint_d,
      nls.builtins.diagnostics.shellcheck,
      nls.builtins.diagnostics.cppcheck,
      --nls.builtins.diagnostics.selene,
      nls.builtins.code_actions.gitsigns,
   },

   on_attach = function(client, bufnr)
      if client.supports_method "textDocument/formatting" then
         vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
         vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
               -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
               vim.lsp.buf.formatting_sync()
            end,
         })
      end
   end,
   root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".nvim.settings.json", ".git"),
}
