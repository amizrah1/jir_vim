return {
    'dense-analysis/ale',
    name = 'ale',
    ft = {'verilog', 'systemverilog'},
    config = function()
        vim.g.ale_linters = {
            verilog = { 'slang' },
            systemverilog = { 'slang' }
        }
        vim.g.ale_fixers = {
            verilog = { 'slang' },
            systemverilog = { 'slang' }
        }
        vim.g.ale_ignore_linter_warnings = {
            slang = { '.*uvm_.*' }
        }
    end
}
