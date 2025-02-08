vim.g.mapleader= " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)





--clipboard----------------------------------------------------------------------------------------------------
-- function to add klipper clipboard contents to xsel
_G.sync_paste = function()
	vim.fn.system('qdbus6 org.kde.klipper /klipper getClipboardContents | xsel -b')
end

_G.sync_copy = function()
	vim.fn.system('qdbus6 org.kde.klipper /klipper org.kde.klipper.klipper.setClipboardContents "$(xsel -o --clipboard)')
end 

vim.api.nvim_set_keymap('i', '<C-v>', [[<Cmd>lua sync_paste()<CR><C-R>+]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-v>', [[<Cmd>lua sync_paste()<CR>"+p]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<C-c>', [["+y<Cmd>lua sync_copy()<CR>]], { noremap = true, silent = true})

vim.g.clipboard = {
	name = "xsel",
	copy = {
		["+"] = "xsel --clipboard --input",
		["*"] = "xsel --clipboard --input",
	},
	paste = {
		["+"] = "xsel --clipboard --output",
		["*"] = "xsel --clipboard --output",
	},
	cache_enabled = 0,
}
--clipboard----------------------------------------------------------------------------------------------------
