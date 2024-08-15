return {
    'sunjon/shade.nvim',
    config = function()
        require'shade'.setup({
            overlay_opacity = 50,
            opacity_step = 1,
            keys = {
                brightness_up    = '<C-Up>',
                brightness_down  = '<C-Down>',
                toggle           = '<leader>ws',
            }
        })
        local wk = require("which-key")
        wk.add({
            { "<leader>w", group = "Windows Shadding" },
            { "<leader>ws", desc = "Toggle Shadding" },
        })
    end
}
