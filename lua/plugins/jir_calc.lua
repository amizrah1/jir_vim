return {
    'amizrah1/jir_calc.nvim',
    name = 'jir_calc',
    config = function()
        require('jir_calc.jir_calc_setup').setup({
            pad_with_underscore = true,
            enable_help_window = true,
            reformat_output = true,
            print_processed = false,
        })
        local whichkey = require('which-key')
        whichkey.add({{ '<leader>m', group = 'Mahshevon' }, mode='vn'})
        vim.keymap.set('n', '<leader>mm',       function() require('jir_calc.window').open_window()      end , { desc = 'Launch Jir Calculator' })
        vim.keymap.set('v', '<leader>ml',       function() require('jir_calc.command').windowless(true)  end , { desc = 'run Jir Calculator on selected lines' })
        vim.keymap.set('n', '<leader>ml',       function() require('jir_calc.command').windowless(false) end , { desc = 'run Jir Calculator on current lines' })
        vim.keymap.set('v', '<leader>md',       function() require('jir_calc.command').debug()           end , { desc = 'Jir Calculator debug' })
        vim.keymap.set('n', '<leader>md',       function() require('jir_calc.command').debug()           end , { desc = 'Jir Calculator debug' })
    end
}

