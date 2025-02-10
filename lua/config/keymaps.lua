vim.g.mapleader = " " 





--clipboard----------------------------------------------------------------------------------------------------
-- function to add klipper clipboard contents to xsel
_G.sync_paste = function()
	vim.fn.system('qdbus6 org.kde.klipper /klipper getClipboardContents | xsel -b')
end

_G.sync_copy = function()
	vim.fn.system('qdbus6 org.kde.klipper /klipper org.kde.klipper.klipper.setClipboardContents "$(xsel -o --clipboard)')
end 

vim.api.nvim_set_keymap('i', '<C-v>', [[<Cmd>lua sync_paste()<CR><C-R>+]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-v>', [[<Cmd>lua sync_paste()<CR>"+P]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<leader>y', [["+y<Cmd>lua sync_copy()<CR>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>Y', [["+Y<Cmd>lua sync_copy()<CR>]], { noremap = true, silent = true})

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


--ThePrimeagen's remaps

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set("x", "<leader>p", "\"_dP")

--delete to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-R><C-w>\\>/<C-R><C-w>/gI<Left><Left>")
vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", {silent = true})


--tmux navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

