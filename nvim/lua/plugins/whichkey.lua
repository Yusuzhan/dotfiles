local wk = require("which-key")
wk.add({ -- buffer --
	{
		"<leader>b",
		"<cmd>lua require('telescope.builtin').buffers()<cr>",
		desc = "Buffers"
	}, -- File Tree --
	{
		"<leader>e",
		"<cmd>Neotree reveal<cr>",
		desc = "Explorer"
	}, -- search file --
	{
		"<leader>f",
		"<cmd>Telescope find_files<cr>",
		desc = "Find File",
		mode = "n"
	}, -- search text --
	{
		"<leader>F",
		"<cmd>Telescope live_grep<cr>",
		desc = "Find Text",
		mode = "n"
	}, -- close buffer --
	{
		"<leader>c",
		"<cmd>bd<cr>",
		desc = "Close Buffer"
	}, {
	"<leader>w",
	"<cmd>w!<CR>",
	desc = "Write"
}, -- disable highlight --
	{
		"<leader>h",
		"<cmd>nohlsearch<CR>",
		desc = "No highlight"
	}, { -- Git --
	{
		"<leader>g",
		group = "Git",
		nowait = true,
		remap = false
	}, {
	"<leader>gR",
	"<cmd>lua require 'gitsigns'.reset_buffer()<cr>",
	desc = "Reset Buffer",
	nowait = true,
	remap = false
}, {
	"<leader>gb",
	"<cmd>Telescope git_branches<cr>",
	desc = "Checkout branch",
	nowait = true,
	remap = false
}, {
	"<leader>gc",
	"<cmd>Telescope git_commits<cr>",
	desc = "Checkout commit",
	nowait = true,
	remap = false
}, {
	"<leader>gd",
	"<cmd>Gitsigns diffthis HEAD<cr>",
	desc = "Diff",
	nowait = true,
	remap = false
}, {
	"<leader>gg",
	"<cmd>lua _LAZYGIT_TOGGLE()<CR>",
	desc = "Lazygit",
	nowait = true,
	remap = false
}, {
	"<leader>gj",
	"<cmd>lua require 'gitsigns'.next_hunk()<cr>",
	desc = "Next Hunk",
	nowait = true,
	remap = false
}, {
	"<leader>gk",
	"<cmd>lua require 'gitsigns'.prev_hunk()<cr>",
	desc = "Prev Hunk",
	nowait = true,
	remap = false
}, {
	"<leader>gl",
	"<cmd>lua require 'gitsigns'.blame_line()<cr>",
	desc = "Blame",
	nowait = true,
	remap = false
}, {
	"<leader>go",
	"<cmd>Telescope git_status<cr>",
	desc = "Open changed file",
	nowait = true,
	remap = false
}, {
	"<leader>gp",
	"<cmd>lua require 'gitsigns'.preview_hunk()<cr>",
	desc = "Preview Hunk",
	nowait = true,
	remap = false
}, {
	"<leader>gr",
	"<cmd>lua require 'gitsigns'.reset_hunk()<cr>",
	desc = "Reset Hunk",
	nowait = true,
	remap = false
}, {
	"<leader>gs",
	"<cmd>lua require 'gitsigns'.stage_hunk()<cr>",
	desc = "Stage Hunk",
	nowait = true,
	remap = false
}, {
	"<leader>gu",
	"<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
	desc = "Undo Stage Hunk",
	nowait = true,
	remap = false
} }, { -- LSP --
	{
		"<leader>l",
		group = "LSP"
	}, { {
	"<leader>la",
	"<cmd>lua vim.lsp.buf.code_action()<cr>",
	desc = "Code Action"
}, {
	"<leader>ld",
	"<cmd>Telescope diagnostics bufnr=0<cr>",
	desc = "Document Diagnostics"
}, {
	"<leader>lw",
	"<cmd>Telescope diagnostics<cr>",
	desc = "Workspace Diagnostics"
}, {
	"<leader>lf",
	"<cmd>lua vim.lsp.buf.format{async=true}<cr>",
	desc = "Format"
}, {
	"<leader>li",
	"<cmd>LspInfo<cr>",
	desc = "Info"
}, {
	"<leader>lI",
	"<cmd>LspInstallInfo<cr>",
	desc = "Installer Info"
}, {
	"<leader>lj",
	"<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",
	desc = "Next Diagnostic"
}, {
	"<leader>lk",
	"<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>",
	desc = "Prev Diagnostic"
}, {
	"<leader>ll",
	"<cmd>lua vim.lsp.codelens.run()<cr>",
	desc = "CodeLens Action"
}, {
	"<leader>lq",
	"<cmd>lua vim.diagnostic.setloclist()<cr>",
	desc = "Quickfix"
}, {
	"<leader>lr",
	"<cmd>lua vim.lsp.buf.rename()<cr>",
	desc = "Rename"
}, {
	"<leader>ls",
	"<cmd>Telescope lsp_document_symbols<cr>",
	desc = "Document Symbols"
}, {
	"<leader>lS",
	"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
	desc = "Workspace Symbols"
} }, {
	"<leader>s",
	group = "Search",
	nowait = true,
	remap = false
}, {
	"<leader>sC",
	"<cmd>Telescope commands<cr>",
	desc = "Commands",
	nowait = true,
	remap = false
}, {
	"<leader>sM",
	"<cmd>Telescope man_pages<cr>",
	desc = "Man Pages",
	nowait = true,
	remap = false
}, {
	"<leader>sR",
	"<cmd>Telescope registers<cr>",
	desc = "Registers",
	nowait = true,
	remap = false
}, {
	"<leader>sb",
	"<cmd>Telescope git_branches<cr>",
	desc = "Checkout branch",
	nowait = true,
	remap = false
}, {
	"<leader>sc",
	"<cmd>Telescope colorscheme<cr>",
	desc = "Colorscheme",
	nowait = true,
	remap = false
}, {
	"<leader>sh",
	"<cmd>Telescope help_tags<cr>",
	desc = "Find Help",
	nowait = true,
	remap = false
}, {
	"<leader>sk",
	"<cmd>Telescope keymaps<cr>",
	desc = "Keymaps",
	nowait = true,
	remap = false
}, {
	"<leader>sr",
	"<cmd>Telescope oldfiles<cr>",
	desc = "Open Recent File",
	nowait = true,
	remap = false
}, {
	"<leader>t",
	group = "Terminal",
	nowait = true,
	remap = false
}, {
	"<leader>tf",
	"<cmd>ToggleTerm direction=float<cr>",
	desc = "Float",
	nowait = true,
	remap = false
}, {
	"<leader>th",
	"<cmd>ToggleTerm size=10 direction=horizontal<cr>",
	desc = "Horizontal",
	nowait = true,
	remap = false
}, {
	"<leader>tn",
	"<cmd>lua _NODE_TOGGLE()<cr>",
	desc = "Node",
	nowait = true,
	remap = false
}, {
	"<leader>tp",
	"<cmd>lua _PYTHON_TOGGLE()<cr>",
	desc = "Python",
	nowait = true,
	remap = false
}, {
	"<leader>tt",
	"<cmd>lua _HTOP_TOGGLE()<cr>",
	desc = "Htop",
	nowait = true,
	remap = false
}, {
	"<leader>tu",
	"<cmd>lua _NCDU_TOGGLE()<cr>",
	desc = "NCDU",
	nowait = true,
	remap = false
}, {
	"<leader>tv",
	"<cmd>ToggleTerm size=80 direction=vertical<cr>",
	desc = "Vertical",
	nowait = true,
	remap = false
}, {
	"<leader>u",
	"<cmd>lua require('undotree').toggle()<CR>",
	desc = "Undo-Tree",
	nowait = true,
	remap = false
} } })
