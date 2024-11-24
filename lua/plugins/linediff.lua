return {
    'AndrewRadev/linediff.vim',
    name = 'linediff',
    config = function()
        local whichkey = require('which-key')
        whichkey.add({{ '<leader>d', group = 'line Diff' }, mode='v'})
        vim.keymap.set('v', '<leader>dl', ':Linediff<CR>',      { desc = 'select lines to diff' })
        vim.keymap.set('v', '<leader>dr', ':Linediffreset<CR>', { desc = 'reset lines to diff' })
    end
}
