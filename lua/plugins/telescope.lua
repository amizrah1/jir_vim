return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'telescope search for files' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'telescope grep in files' })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'telescope search in buffers' })
            vim.keymap.set('n', '<leader>fc', '<cmd>Telescope colorscheme<cr>' , {desc = 'Colorscheme with preview'})
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                },
                pickers = {
                    colorscheme = {
                        enable_preview = true
                    }
                },
            }
            require("telescope").load_extension("ui-select")
        end
    }
}
