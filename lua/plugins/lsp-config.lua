return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {"lua_ls", "clangd", "neocmake", "fortls", "ltex", "pylsp", }
			})
		end
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require("lspconfig")

			--servers
			lspconfig.clangd.setup({
				capabilities = capabilities
			})
			lspconfig.pylsp.setup({
				capabilities = capabilities
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.neocmake.setup({
				capabilities = capabilities
			})
			lspconfig.ltex.setup({
				capabilities = capabilities
			})
			lspconfig.fortls.setup({
				capabilities = capabilities
			})

			--keymaps
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}


}
