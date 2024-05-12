return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require('neo-tree').setup {
            filesystem = {
                filtered_items = {
                    visible = true,
                    -- hide_dotfiles = false,
                    hide_gitignored = true,
                },
            },
        }
        vim.keymap.set('n', '<C-e>', ':Neotree toggle<CR>', { desc = 'toggle neotree' })
        vim.keymap.set('n', '<leader>nf', ':Neotree filesystem reveal left<CR>', { desc = 'open filesystem tree' })
        vim.keymap.set('n', '<leader>nb', ':Neotree buffers reveal left<CR>', { desc = 'open list of buffers' })
    end
}
