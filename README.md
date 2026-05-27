# Neovim Configs

Config files as of 5/27/26

## Structure

- init.lua
- lua/config/ - options, keymaps, lazy bootstrap
- lua/plugins/

## Lite mode
Turn of heavy plugins like LSP and plugins with external libraries with `:LiteToggle` in nvim

## Included Packages

### Plugin Manager
- folke/lazy.nvim

### Colorschemes
- folke/tokyonight.nvim (defualt)
- ellisonleao/gruvbox.nvim
- catppuccin/nvim
- rebelot/kanagawa.nvim
- rose-pine/neovim
- EdenEast/nightfox.nvim
- neanias/everforest-nvim
- shaunsingh/nord.nvim
- navarasu/onedark.nvim

### UI
- nvim-mini/mini.icons
- nvim-lualine/lualine.nvim
- akinsho/bufferline.nvim
- nvim-neo-tree/neo-tree.nvim
- MunifTanjim/nui.nvim
- nvim-lua/plenary.nvim

### Snacks
- folke/snacks.nvim (bigfile, dashboard, image, input, indent, keymap, notifier, picker, quickfile, scope, statuscolumn, toggle, words, terminal, scroll)

### Keys and Cmdline
- folke/which-key.nvim
- folke/noice.nvim
- folke/flash.nvim

### Treesitter
- nvim-treesitter/nvim-treesitter

## External Dependencies

- glow (markdown renderer, used by lua/config/markdown-preview.lua)

## Custom Keymaps

- TODO

## Special Features

### Markdown renderer

- <leader>mp - toggle markdown preview pane (runs glow on the current file)
- <leader>mr - manually refresh the markdown preview


--- 

## TODO

- [ ] LSP setup (mason, lspconfig, cmp)
- [ ] Autocomplete (blink.cmp or nvim-cmp)
- [ ] Formatter (conform.nvim)
- [ ] Linter (nvim-lint)
- [ ] Git signs (gitsigns.nvim)
- [ ] Comment toggling
- [ ] Surround
- [ ] Autopairs
- [ ] DAP (debugging)
- [ ] add keymaps here
