# ✨ My Neovim Configuration

This is my personal Neovim configuration tailored for **Python**, **C++**, and **CUDA** development. It recreates a **Visual Studio Code–like experience** with modern Neovim plugins, fast startup, intuitive keymaps, and great visuals.

---

## 📦 Plugins Overview

### 🔌 Plugin Manager

- **[lazy.nvim](https://github.com/folke/lazy.nvim)** – Fast, modern plugin manager that loads plugins lazily for performance.

### 🧠 LSP & Autocompletion

- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** – Configures built-in LSP for various languages.
- **[mason.nvim](https://github.com/williamboman/mason.nvim)** + **[mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)** – Easy LSP server management.
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** – Autocompletion engine.
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)** – Snippet support.

**Important keymaps:**
- `K` – Hover documentation
- `gd` – Go to definition
- `gr` – Find references
- `<Tab>` / `<S-Tab>` – Navigate autocompletion
- `<CR>` – Confirm autocompletion

### 🎨 UI Enhancements

- **[tokyonight.nvim](https://github.com/folke/tokyonight.nvim)** – Beautiful and modern colorscheme.
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** – Fully featured statusline.
- **[nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)** – File explorer.

**Keymaps:**
- `<leader>e` – Toggle file tree

### 🔍 Navigation & Search

- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** – Fuzzy finder.

**Keymaps:**
- `<leader>ff` – Find file
- `<leader>fg` – Live grep
- `<leader>fb` – Find buffers

- **[which-key.nvim](https://github.com/folke/which-key.nvim)** – Displays possible keybindings.
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** – Advanced syntax highlighting and parsing.

### 🧹 Formatting & Linting

- **[null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)** – Connect formatters and linters to the LSP client.

**Keymap:**
- `<leader>f` – Format buffer

### 🧪 Git Integration

- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** – Git signs in the gutter, hunk previews, staging.

**Keymaps:**
- `]c` / `[c` – Next/previous hunk
- `<leader>gs` – Git status

---

## 🔁 General Key Remaps

```lua
-- Set leader key
vim.g.mapleader = " "

-- Save and quit
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- Clear search highlight
vim.keymap.set("n", "<leader>h", ":noh<CR>")

-- Move visual lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Clipboard yank
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


