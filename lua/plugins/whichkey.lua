return {
    "folke/which-key.nvim",
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        local whichkey = require("which-key")
        whichkey.setup({
            triggers_blacklist = {
                -- list of mode / prefixes that should never be hooked by WhichKey
                -- this is mostly relevant for keymaps that start with a native binding
                c = { "\\" },
                i = { "j", "k" },
                v = { "j", "k" },
            },
        })
        whichkey.register({
            c = { name = "Code operattions" },
            f = { name = "Telescope" },
            n = { name = "Neotree" },
            d = { name = "Debug options" },
            s = { name = "System Clipboard" },
            p = { name = "CoPilot" },
        }, { prefix = "<leader>" })
    end,
}
