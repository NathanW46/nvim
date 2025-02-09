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
			local lspconfig = require("lspconfig")

			--servers
			lspconfig.clangd.setup({})
			lspconfig.pylsp.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.neocmake.setup({})
			lspconfig.ltex.setup({})
			lspconfig.fortls.setup({})

			--keymaps
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}


}
