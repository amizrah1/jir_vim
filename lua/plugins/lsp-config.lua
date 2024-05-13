return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "black", "debugpy", "lua-language-server", "pyright", "mypy" },
                opt = { automatic_installation = true, }
            })
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
                filetypes = { "python" },
            })
            -- use :Mason and :MasonInfo to check for updates
            -- use :LspInfo to check connection between buffer and server
            vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, { desc = 'Hover' })
            vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, { desc = 'go to declaration' })
            vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = 'go to definition' })
            vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, { desc = 'go to implementation' })
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'choose code action for current warning' })
            vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, { desc = 'clean format current buffer' })
        end
    }
}
