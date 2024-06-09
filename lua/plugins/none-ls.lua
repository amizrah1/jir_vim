return {
    "nvimtools/none-ls.nvim",
    filetypes = { "python", "lua" },
    dependencies = {
        "williamboman/mason.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        "neovim/nvim-lspconfig",
    },
    opts = function()
        local null_ls = require("null-ls")
        local username = os.getenv("USER")
        null_ls.setup({
            temp_dir = "/tmp/" .. username .. "/",
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black,
                null_ls.builtins.diagnostics.mypy,
            },
        })
    end,
}
