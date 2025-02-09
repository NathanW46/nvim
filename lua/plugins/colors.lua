function ColorMyPencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color) 
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end
return { 
	"folke/tokyonight.nvim", 
	name = "tokyonight", 
	lazy = false, 
	priority = 1000,
	style = "storm",
	--disable italics for fcns
	styles = {
		functions = {}
	},
	config = function()
		ColorMyPencils()
	end
}
