return {
    'sidebar-nvim/sidebar.nvim',
    config = function()
        require("sidebar-nvim").setup({
            disable_default_keybindings = 0,
            bindings = nil,
            open = false,
            side = "left",
            initial_width = 35,
            hide_statusline = false,
            update_interval = 1000,
            sections = { "datetime", "git", "diagnostics", "buffers" },
            section_separator = { "", "-----", "" },
            section_title_separator = { "" },
            containers = {
                attach_shell = "/bin/sh", show_all = true, interval = 5000,
            },
            datetime = { format = " %a %b %d, %H:%M", clocks = { { name = "local" } } },
            todos = { ignored_paths = { "~" } },
            buffers = {
                icon = "",
                sorting = "id",
                show_numbers = true,
                ignore_not_loaded = false,
                ignore_terminal = true,
            },
        })
    end
}
