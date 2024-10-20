if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

-- ~/.config/nvim/lua/user/polish.lua

-- Monkey-patch for deprecated function
if vim.lsp.get_active_clients == nil then vim.lsp.get_active_clients = vim.lsp.get_clients end

-- Additional configurations can go here
