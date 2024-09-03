return {
    'Mr-LLLLL/interestingwords.nvim',
    event = 'VeryLazy',
    config = function()
        require('interestingwords').setup {
            colors = { '#FF1493', '#FFD700', '#00FF00', '#00BFFF', '#FF00FF', '#00FFFF', '#FF4500', '#0000FF', '#800000', '#8A2BE2', '#FFB6C1', '#696969' },
            search_count = false, -- if this is set to true it is killer for large files
            navigation = true,
            scroll_center = true,
            search_key = '<Bslash>',
            cancel_search_key = '|',
            color_key = 'mm',
            cancel_color_key = 'mc',
        }
    end,
}
