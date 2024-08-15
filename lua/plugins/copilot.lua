return {
    'github/copilot.vim',
    config = function()
        vim.api.nvim_create_autocmd('VimEnter', { -- should not be enable by default for better performance, but still I want it enable 
            callback = function()
--                vim.cmd('Copilot disable')
            end
        })
        local whichkey = require("which-key")
        whichkey.add({
            { "<leader>c", group = "CoPilot" }})
        vim.keymap.set('n', '<leader>cz', ':Copilot status<CR>',  { desc = 'Get Copilot Status' })
        vim.keymap.set('n', '<leader>cx', ':Copilot disable<CR>', { desc = 'Disable Copilot Globally' })
        vim.keymap.set('n', '<leader>ce', ':Copilot enable<CR>',  { desc = 'Enable Copilot Globally' })
        vim.keymap.set('i', '<C-L>', '<Plug>(copilot-accept-word)', { desc = 'Accept Copilot one word suggestion' })
        vim.keymap.set('i', '<C-S-L>', '<Plug>(copilot-accept-line)', { desc = 'Accept Copilot Line' })
        vim.keymap.set('i', '<ALT-BACKSLASH>', '<Plug>(copilot-suggest)', { desc = 'force copilot to suggest' })
        vim.g.copilot_filetypes = {
            txt = true,
        }
    end
}

