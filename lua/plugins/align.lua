return {
	'RRethy/nvim-align',
    name = 'align',
    vim.keymap.set('v', '<leader>a', function()
        local char = vim.fn.input('Align by character: ')
        vim.cmd("'<,'>Align " .. char)
    end, { desc = 'align text in selected lines by char <input>' })
}
