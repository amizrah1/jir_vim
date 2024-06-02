return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            ignore_install = { "lst" },
            ensure_installed = { "lua", "verilog", "python" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
