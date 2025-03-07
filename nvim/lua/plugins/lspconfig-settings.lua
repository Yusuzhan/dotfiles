local M = {
	'neovim/nvim-lspconfig',
}

M.config = function()
	local lspconfig = require('lspconfig')
	-- lua lsp
	lspconfig.lua_ls.setup {}
	-- python lsp
	lspconfig.pylsp.setup {}
	-- bash
	lspconfig.bashls.setup {}
	-- clangd
	lspconfig.clangd.setup {}
	-- dart lsp
	lspconfig.dartls.setup {
		cmd = { "dart", 'language-server', '--protocol=lsp' }
	}
	-- typescript lsp
	lspconfig.ts_ls.setup {}
	-- jq
	lspconfig.jsonls.setup {}

	-- Use LspAttach autocommand to only map the following keys
	-- after the language server attaches to the current buffer
	vim.api.nvim_create_autocmd('LspAttach', {
		group = vim.api.nvim_create_augroup('UserLspConfig', {}),
		callback = function(ev)
			-- Enable completion triggered by <c-x><c-o>
			vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

			-- Buffer local mappings.
			-- See `:help vim.lsp.*` for documentation on any of the below functions
			local opts = { buffer = ev.buf }
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
			vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
			-- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
			-- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
			-- vim.keymap.set('n', '<space>wl', function()
			-- 	print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			-- end, opts)
			-- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
			-- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
			vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
			vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		end,
	})
end

return M
