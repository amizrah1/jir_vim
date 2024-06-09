return {
    'github/copilot.vim',
    config = function()
        vim.api.nvim_create_autocmd('VimEnter', { -- nothing should be enbled by default for better performance
            callback = function()
--                vim.cmd('Copilot disable')
            end
        })
        vim.keymap.set('n', '<leader>ps', ':Copilot status<CR>',  { desc = 'Get Copilot Status' })
        vim.keymap.set('n', '<leader>pd', ':Copilot disable<CR>', { desc = 'Disable Copilot Globally' })
        vim.keymap.set('n', '<leader>pe', ':Copilot enable<CR>',  { desc = 'Enable Copilot Globally' })
    end
}


