return {
    "Mofiqul/adwaita.nvim",
    config = function()
        require('lazy').setup({
            {
                lazy = false,
                priority = 1000,
            },
        })
    end
}
