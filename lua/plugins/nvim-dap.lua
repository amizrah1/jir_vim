return {
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup()
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
--            dap.set_log_level = 'DEBUG'
            vim.keymap.set('n', '<F5>',             function() require('dap').continue() end, { desc = 'run script with debugger' } )
            vim.keymap.set('n', '<S-F5>',           function() require('dap').disconnect() end, { desc = 'while debugging stop run' })
            vim.keymap.set('n', '<Leader>d<F5>',    function() require('dap').continue() end, { desc = 'run script with debugger' } )
            vim.keymap.set('n', '<Leader>d<F4>',    function() require('dap').disconnect() end, { desc = 'while debugging stop run' })
            vim.keymap.set('n', '<Leader>d<F10>',   function() require('dap').step_over() end, { desc = 'while debugging step over' })
            vim.keymap.set('n', '<F11>',            function() require('dap').step_into() end, { desc = 'while debugging step into ' })
            vim.keymap.set('n', '<Leader>d<F12>',   function() require('dap').step_out() end, { desc = 'while debugging step out' })
            vim.keymap.set('n', '<F8>',             function() require('dap').toggle_breakpoint() end, { desc = 'toggle breakpoint for debug' })
            vim.keymap.set('n', '<Leader>d<F8>',    function() require('dap').toggle_breakpoint() end, { desc = 'toggle breakpoint for debug' })
            vim.keymap.set('n', '<Leader>d<F6>',    function() require('dap').run_last() end, { desc = 'run last configuration again' })
        end
    },
    {
        "mfussenegger/nvim-dap",
    },
    {
        "mfussenegger/nvim-dap-python",
        ft = "python",
        dependencies = {
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui",
        },
        config = function()
            local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
            require("dap-python").setup(path)
        end,
    },
}
