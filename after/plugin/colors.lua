function ColorMyPencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color) 
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

require("tokyonight").setup({
	style = "storm",

	--disable italics for fcns
	styles = {
		functions = {}
	}
})

ColorMyPencils()
