return {
    "folke/which-key.nvim",
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        local whichkey = require("which-key")
        whichkey.add({
            { "<leader>c", group = "Code operation" },
            { "<leader>f", group = "Telescope" },
            { "<leader>n", group = "Neotree" },
            { "<leader>d", group = "Debug options" },
            { "<leader>s", group = "System Clipboard" },
            { "<leader>p", group = "CoPilot" },
            { "<leader>sd", desc = "toggle non-active window shade" },
        })
    end,
}
