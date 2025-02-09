
--lazy installer
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--use-brach-stable", -- latest stable release
		lazypath
	})
end
vim.opt.rtp:prepend(lazypath)
local plugins = 
{
	{ "folke/tokyonight.nvim", name = "tokyonight", lazy = false, priority = 1000},
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' }},
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{ 'mbbill/undotree'},
	{ 'ThePrimeagen/harpoon', dependencies = { 'nvim-lua/plenary.nvim' }},
	{ 'tpope/vim-fugitive' },
}
local opts = {}

require("lazy").setup(plugins, opts)


