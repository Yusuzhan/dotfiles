-- color scheme
vim.opt.termguicolors = true
-- line number settings
vim.opt.number = true
vim.opt.relativenumber = true
-- hight cursor line
vim.opt.cursorline = true
-- left icon column
vim.opt.signcolumn = "yes"
-- right color line
vim.opt.colorcolumn = "120"
-- indent settings
vim.opt.tabstop = 2        -- tab 显示为 2 空格
vim.opt.shiftwidth = 2     -- 缩进级别
vim.opt.expandtab = true   -- 用空格代替 tab
vim.opt.swapfile = false
vim.opt.guicursor = ""
-- use system clipboard
vim.opt.clipboard = "unnamedplus"
-- Line number color scheme
vim.api.nvim_set_hl(0, "LineNrAbove", {fg = "#8be9fd"})
vim.api.nvim_set_hl(0, "CursorLineNr", {fg = "#50fa7b"})
vim.api.nvim_set_hl(0, "LineNrBelow", {fg = "#bd93f9"})

