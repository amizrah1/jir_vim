return {
    'folke/which-key.nvim',
    dependencies = {
        'echasnovski/mini.icons'
    },
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300

        local whichkey = require('which-key')

        whichkey.setup({
            icons = {
                group = ' +'
            }
        })

        whichkey.add({
            { '<leader>s', group = 'System Clipboard', mode='vn'},
        })
    end,
}
