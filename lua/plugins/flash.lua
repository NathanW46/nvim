return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        search = { enabled = true },  -- enhance / and ?
        char = {                       -- enhance f F t T ; ,
          enabled = true,
          jump_labels = true,
        },
      },
    },
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash jump" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash treesitter" },
      { "r", mode = "o",               function() require("flash").remote() end, desc = "Remote flash" },
      { "R", mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter search" },
      { "<c-s>", mode = { "c" },       function() require("flash").toggle() end, desc = "Toggle Flash search" },
    },
  },
}
