return {
    "folke/which-key.nvim",
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        local whichkey = require("which-key")
        whichkey.setup({
--            triggers_blacklist = {
--                -- list of mode / prefixes that should never be hooked by WhichKey
--                -- this is mostly relevant for keymaps that start with a native binding
--                c = { "\\" },
--                i = { "j", "k" },
--                v = { "j", "k" },
--            },
        })
        whichkey.add({
            { "<leader>c", group = "Code operation" },
            { "<leader>f", group = "Telescope" },
            { "<leader>n", group = "Neotree" },
            { "<leader>d", group = "Debug options" },
            { "<leader>s", group = "System Clipboard" },
            { "<leader>p", group = "CoPilot" },
        })
    end,
}
