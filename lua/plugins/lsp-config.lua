return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = {
            "williamboman/mason.nvim",
        },
        config = function()
            require("mason-tool-installer").setup({
                ensure_installed = { "lua-language-server", "black", "debugpy", "mypy", "pyright", "stylua" }
            })
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "WhoIsSethDaniel/mason-tool-installer.nvim",
        },
        config = function()
            require("mason-lspconfig").setup({})
        end
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "williamboman/mason.nvim",
        },
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            require("neodev").setup({})
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                ft = { "lua" },
                settings = {
                    Lua = {
                        completion = {
                            callSnippet = "Replace"
                        }
                    }
                }
            })
            lspconfig.pyright.setup({
                capabilities = capabilities,
                ft = { "python" },
            })
            vim.keymap.set('n', '<leader>ch', vim.lsp.buf.hover,                      { desc = 'Hover' })
            vim.keymap.set('n', '<leader>cD', vim.lsp.buf.declaration,                { desc = 'go to code declaration' })
            vim.keymap.set('n', '<leader>cd', vim.lsp.buf.definition,                 { desc = 'go to code definition' })
            vim.keymap.set('n', '<leader>ci', vim.lsp.buf.implementation,             { desc = 'go to code implementation' })
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action,                { desc = 'choose code action for current warning' })
            vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format,                     { desc = 'clean format current buffer' })
            vim.keymap.set('n', '<leader>cg', ':lua vim.diagnostic.open_float()<CR>', { desc = 'show line diagnostics' })
        end
    },
}
