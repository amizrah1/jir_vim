return {
    'dense-analysis/ale',
    filetype = {'verilog', 'systemverilog'},
    config = function()
        vim.g.ale_linters = {
            verilog = { 'verilog' }
        }
        vim.g.ale_fixers = {
            verilog = { 'verilator' }
        }
    end
}
