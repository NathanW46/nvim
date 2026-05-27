return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSUpdate", "TSInstall", "TSInstallInfo", "TSUpdateSync" },
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "python",
        "lua",
        "vim",
        "vimdoc",
        "markdown",
        "markdown_inline",
        "bash",
        "json",
        "yaml",
        "toml",
        "query",
        "regex",
        "diff",
        "gitcommit",
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-Space>",
          node_incremental = "<C-Space>",
          scope_incremental = false,
          node_decremental = "<BS>",
        },
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
