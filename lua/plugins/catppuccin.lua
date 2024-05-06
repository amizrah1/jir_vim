return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "catppuccin-frappe"
    end
}

-- if catppuccin is not working add these commands to init.lua
--local opts = {}
--local plugins = {
--    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
--}
--require("lazy").setup(plugins, opts)
