return {
    'amizrah1/jir_calc.nvim',
    name = 'jir_calc',
    config = function()
        --package.path = package.path .. ';/nfs/site/disks/ive_lnl_fpga_001/work/amizrah1/home_local/share/nvim/lazy/jir_calc/lua/jir_calc/?.lua'
        require('jir_calc.jir_calc_setup').setup({
            pad_with_underscore = true,
            enable_help_window = true,
            reformat_output = true,
            print_processed = false,
        })
        vim.keymap.set('n', '<leader>m',       function() require('jir_calc.window').open_window() end , { desc = 'Jir Calculator' })
    end
}

