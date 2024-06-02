return {
    'dense-analysis/ale',
    event = "VeryLazy",
    config = function()
        vim.g.ale_linters = {
            verilog = { 'verilog' }
        }
        vim.g.ale_fixers = {
            verilog = { 'verilator' }
        }
    end
}
