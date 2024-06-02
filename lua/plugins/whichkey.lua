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
            s = { name = "System Clipboard" },
        }, { prefix = "<leader>" })
    end,
}

