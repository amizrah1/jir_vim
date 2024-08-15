return {
    "folke/which-key.nvim",
    dependencies = {
        "echasnovski/mini.icons"
    },
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        local whichkey = require("which-key")
        whichkey.add({
            { "<leader>l", group = "LSP Code operation" },
            { "<leader>f", group = "Telescope" },
            { "<leader>n", group = "Neotree" },
            { "<leader>d", group = "Debug options" },
            { "<leader>s", group = "System Clipboard" },
            { "<leader>c", group = "CoPilot" },
            { "<leader>w", desc  = "window shading" },
        })
    end,
}
