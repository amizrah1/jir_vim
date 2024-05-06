return {
    "Mr-LLLLL/interestingwords.nvim",
    config = function()
        require("interestingwords").setup {
            colors = { '#aeee00', '#ff0000', '#0000ff', '#b88823', '#ffa724', '#ff2c4b' },
            -- colors = { '#FF1493', '#FFD700', '#00FF00', '#00BFFF', '#FF00FF', '#00FFFF', '#FF4500', '#0000FF', '#800000', '#8A2BE2', '#FFB6C1', '#696969' },
            search_count = true,
            navigation = true,
            scroll_center = true,
            --search_key = "ms",
            --cancel_search_key = "mx",
            color_key = "mm",
            cancel_color_key = "mc",
        }
    end
}
