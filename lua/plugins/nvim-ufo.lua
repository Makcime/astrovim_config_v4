return {
  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
      -- Monkey-patch for deprecated function
      if vim.lsp.get_active_clients == nil then vim.lsp.get_active_clients = vim.lsp.get_clients end

      -- Configure nvim-ufo
      require("ufo").setup {
        provider_selector = function(bufnr, filetype)
          -- Use LSP and indent providers instead of Tree-sitter
          return { "lsp", "indent" }
        end,
      }
    end,
  },
}
