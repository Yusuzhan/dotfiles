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
-- indent char
vim.opt.tabstop = 2
-- vim.opt.autoindent = true
-- vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.guicursor = ""

vim.api.nvim_set_hl(0, "LineNrAbove", {fg = "#8be9fd"})
vim.api.nvim_set_hl(0, "CursorLineNr", {fg = "#50fa7b"})
vim.api.nvim_set_hl(0, "LineNrBelow", {fg = "#bd93f9"})

