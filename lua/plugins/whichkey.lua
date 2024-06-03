return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        local whichkey = require("which-key")
        whichkey.register({
            c = { name = "Code operattions" },
            f = { name = "Telescope" },
            n = { name = "Neotree" },
            d = { name = "Debug options" },
            s = { name = "System Clipboard" },
        }, { prefix = "<leader>" })
    end,
}

