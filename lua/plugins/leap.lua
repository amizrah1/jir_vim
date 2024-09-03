return {
    'ggandor/leap.nvim',
    config = function()
        require('leap').add_default_mappings()
        require('leap').init_highlight(true)
    end,
    dependencies = {
        'tpope/vim-repeat',
    },
    lazy = false,
}



-- Initiate the search in the forward (s) or backward (S) direction, or in the other windows (gs). (Note: you can search bidirectionally in the current window, or even in the whole tab page, if you are okay with the trade-offs.)
