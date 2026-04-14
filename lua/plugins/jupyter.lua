return {
    "untitled-ai/jupyter_ascending.vim",
    ft = { "python", "jupyter" }, -- lazy-load for Python/Jupyter files
    config = function()
        local wk = require("which-key")
        vim.api.nvim_set_hl(0, "JupyterIcon", { fg = "#f37626", bold = true })
        -- Which-Key mappings for Jupyter
        wk.add({
            { "<leader>j", group = "Jupyter", icon = { icon = "", color = "orange" } }, -- group for Jupyter commands

            -- Run current cell
            { "<leader>jx", "<cmd>JupyterRunCell<cr>", desc = "Run Cell", mode = "n" },

            -- Run all cells
            { "<leader>ja", "<cmd>JupyterRunAll<cr>", desc = "Run All Cells", mode = "n" },

            -- Insert new cell below
            { "<leader>jb", "<cmd>JupyterInsertCellBelow<cr>", desc = "Insert Cell Below", mode = "n" },

            -- Insert new cell above
            { "<leader>ju", "<cmd>JupyterInsertCellAbove<cr>", desc = "Insert Cell Above", mode = "n" },

            -- Execute selection in visual mode
            {
                mode = "v",
                { "<leader>js", "<cmd>JupyterSendSelection<cr>", desc = "Send Selection" },
            },

            -- Optional: hide a keymap
            { "<leader>jx", hidden = true },
        })
    end,
}
