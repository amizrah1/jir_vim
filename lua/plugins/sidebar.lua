return {
    'sidebar-nvim/sidebar.nvim',
    config = function()
        local buffers = {
            title = "Buffers",
            icon = "",
            draw = function()
                local lines = {}
                local cwd = vim.fn.getcwd() .. "/"

                local all_buffers = vim.fn.getbufinfo()
                for _, buf in ipairs(all_buffers) do
                    if buf.name:find("^term://") ~= nil or buf.name == "" then
                        goto continue
                    end

                    if buf.listed == 1 then
                        local buf_name = vim.fn.substitute(buf.name, "^" .. vim.fn.escape(cwd, "/-"), "", "")
                        if buf.name == vim.api.nvim_buf_get_name(0) then
                            table.insert(lines, "> " .. buf_name)
                        else
                            table.insert(lines, "  " .. buf_name)
                        end
                    end

                    ::continue::
                end

                return {
                    lines = lines,
                }
            end,
        }
        require("sidebar-nvim").setup({
            disable_default_keybindings = 0,
            bindings = nil,
            open = false,
            side = "left",
            initial_width = 35,
            hide_statusline = false,
            update_interval = 1000,
            sections = { "datetime", "git", "diagnostics" },
            section_separator = { "", "-----", "" },
            section_title_separator = { "" },
            containers = {
                attach_shell = "/bin/sh", show_all = true, interval = 5000,
            },
            datetime = { format = "%a %b %d, %H:%M", clocks = { { name = "local" } } },
            todos = { ignored_paths = { "~" } },
        })
    end
}
