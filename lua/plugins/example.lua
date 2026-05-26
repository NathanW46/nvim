-- Skeleton plugin spec. Returns {} so lazy.nvim ignores it.
-- Copy this file, rename it, and fill in the fields you need.
-- Full reference: https://lazy.folke.io/spec

return {}

--[[
return {
  "owner/repo",                       -- required: short github path

  -- Loading triggers (pick one or none; default is lazy-on-require)
  lazy = false,                       -- load at startup
  event = "VeryLazy",                 -- load on autocmd event(s)
  cmd = { "MyCommand" },              -- load when a command is run
  ft = { "lua", "markdown" },         -- load for filetypes
  keys = {                            -- load when a key is pressed
    { "<leader>x", "<cmd>MyCommand<CR>", desc = "do thing" },
  },

  priority = 1000,                    -- higher = loaded earlier (colorschemes use 1000)
  dependencies = { "other/plugin" },  -- load these first
  enabled = true,                     -- set false to disable without deleting

  -- One of these to configure the plugin:
  opts = {                            -- table passed to plugin's setup()
    some_option = true,
  },
  -- or:
  config = function(_, opts)          -- full control over setup
    require("plugin_name").setup(opts)
    vim.keymap.set("n", "<leader>y", function() end, { desc = "..." })
  end,

  init = function()                   -- runs before plugin loads (use sparingly)
    vim.g.some_global = 1
  end,
}
--]]
