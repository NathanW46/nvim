return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {
      cmdline = {
        enabled = true,
        view = "cmdline_popup",
        format = {
          cmd         = { icon = "" },
          search_down = { icon = "" },
          search_up   = { icon = "" },
          filter      = { icon = "" },
          lua         = { icon = "" },
          help        = { icon = "󰋖" },
        },
      },
      messages = { enabled = true, view = "mini" },
      routes = {
        { filter = { event = "msg_show", kind = "", find = "written" }, opts = { skip = true } },
        { filter = { event = "msg_show", kind = "search_count" }, opts = { skip = true } },
        { filter = { event = "msg_show", kind = "", find = "yanked" }, opts = { skip = true } },
        { filter = { event = "msg_show", kind = "", find = "lines, " }, opts = { skip = true } },
      },
      popupmenu = { enabled = true, backend = "nui" },
      notify = { enabled = false },
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = false,
          ["vim.lsp.util.stylize_markdown"] = false,
          ["cmp.entry.get_documentation"] = false,
        },
      },
      presets = {
        bottom_search = false,
        command_palette = true,
        long_message_to_split = false,
        inc_rename = false,
      },
    },
  },
}
