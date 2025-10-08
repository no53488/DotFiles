-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- " This is necessary for VimTeX to load properly. The "indent" is optional.
--Note: Most plugin managers will do this automatically!

-- Set indents
vim.cmd([[
    filetype plugin indent on
    set shiftwidth=4 smarttab
    set expandtab
]])
