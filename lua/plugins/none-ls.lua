return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,

				--python
				null_ls.builtins.diagnostics.pylint.with({
					diagnostics_prostprocess = function(diagnostic)
						diagnostic.code = diagnostic.message_id
					end,
				}),
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,
				--Cmake
				null_ls.builtins.formatting.cmake_format,
				null_ls.builtins.diagnostics.cmake_lint,

				--C++
				null_ls.builtins.formatting.clang_format,

			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
