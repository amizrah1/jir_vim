return {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    dependencies = {
        "williamboman/mason.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        "neovim/nvim-lspconfig",
    },
    ft = { "python" },
    opts = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black,
                null_ls.builtins.diagnostics.mypy,
            },
        })
    end,
}
