-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set multiple color columns
vim.opt.colorcolumn = "80,100"

-- Highlight the color columns with a subtle background color
vim.cmd [[
  highlight ColorColumn ctermbg=lightgrey guibg=#303030
]]

