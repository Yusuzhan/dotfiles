require("lazy").setup({
	{
		"dracula/vim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.cmd.colorscheme('dracula')
		end,
	},
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timout = true
			vim.o.timoutlen = 300
		end,
		lazy = true,
		config = function()
			require("plugins.whichkey")
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	},
	-- {
	-- 	"nvim-tree/nvim-tree.lua",
	-- 	version = "*",
	-- 	lazy = false,
	-- 	dependencies = {
	-- 		"nvim-tree/nvim-web-devicons",
	-- 	},
	-- 	config = function()
	-- 		require("nvim-tree").setup {}
	-- 	end,
	-- },
	{
		'williamboman/mason.nvim',
		config = function()
			require("mason").setup {}
		end
	},
	{ 'williamboman/mason-lspconfig.nvim' },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require('lualine').setup {}
		end,
	},
	{
		'romgrk/barbar.nvim',
		dependencies = {
			'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
			'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
		},
		init = function() vim.g.barbar_auto_setup = false end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			animation = true,
			-- insert_at_start = true,
			-- …etc.
		},
		version = '^1.0.0', -- optional: only update when a new 1.x version is released
	},
	{
		require("plugins.lspconfig-settings"),
	},
	{
		require("plugins.nvim-cmp-settings"),
	},
	-- highlight
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = { "lua" },
				sync_install = false,
				highlight = { enable = false },
				indent = { enable = false },
			})
		end
	},
	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	{
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('telescope').setup {
				defaults = {
					-- layout_strategy = "left",
					layout_config = {
						preview_cutoff = 1, -- Preview should always show (unless previewer = false)
						width = function(_, max_columns, _)
							return math.min(max_columns, 80)
						end,
						height = function(_, _, max_lines)
							return math.min(max_lines, 15)
						end,
					},
				},
				pickers = {
					find_files = {
						theme = "dropdown",
					},
				},
				extensions = {
					fzf = {
						fuzzy = true, -- false will only do exact matching
						override_generic_sorter = true, -- override the generic sorter
						override_file_sorter = true, -- override the file sorter
						case_mode = "smart_case", -- or "ignore_case" or "respect_case"
						-- the default case_mode is "smart_case"
					}
				}
			}
			-- To get fzf loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require('telescope').load_extension('fzf')
		end
	},
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {} -- this is equalent to setup({}) function
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {}
	},
	-- amongst your other plugins
	{ 'akinsho/toggleterm.nvim', version = "*", config = true },
	-- Undo-Tree
	require("plugins.undo-tree-settings"),
	require("plugins.gitsigns-settings"),
	{
		'dart-lang/dart-vim-plugin',
		ft = { "dart" },
		lazy = true,
	},
	-- my picker plugin
	{
		url  = "git@github.com:Yusuzhan/picker-plugin.git",
		cmd  = "Pick",
		lazy = true,
	},
	{
		url  = "git@github.com:Yusuzhan/json_formatter.nvim.git",
		cmd  = "Fmt",
		lazy = true,
	},
	-- lsp progress
	{
		"j-hui/fidget.nvim",
		lazy = true,
		opts = {
			-- options
		},
	},
	-- lspsaga
	{
		'nvimdev/lspsaga.nvim',
		config = function()
			require('lspsaga').setup({})
		end,
		dependencies = {
			'nvim-treesitter/nvim-treesitter',
			'nvim-tree/nvim-web-devicons',
		}
	},
	-- markdown preview
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	}
})
