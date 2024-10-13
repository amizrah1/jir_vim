return {
    'nvim-neo-tree/neo-tree.nvim',
    name = 'neo-tree',
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
    },
    config = function()
        require('neo-tree').setup({
            filesystem = {
                filtered_items = {
                    visible = true,
                    -- hide_dotfiles = false,
                    hide_gitignored = true,
                },
            },
        })
        local whichkey = require('which-key')
        whichkey.add({
            { '<leader>n', group = 'Neotree' }})
        vim.keymap.set('n', '<leader>nf', ':Neotree filesystem reveal left<CR>', { desc = 'open filesystem tree' })
        vim.keymap.set('n', '<leader>nb', ':Neotree buffers reveal left<CR>', { desc = 'open list of buffers' })
        vim.keymap.set('n', '<leader>nc', ':Neotree close <CR>', { desc = 'close neotree' })
    end
}
