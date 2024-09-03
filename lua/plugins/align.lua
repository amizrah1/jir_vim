return {
    -- " In visual mode
    -- :'<,'>Align regex_pattern.*
	"RRethy/nvim-align",
    vim.keymap.set('v', '<leader>a', function()
        local char = vim.fn.input("Align by character: ")
        vim.cmd("'<,'>Align " .. char)
    end, { desc = 'align text in selected lines by char <input>' })
}
