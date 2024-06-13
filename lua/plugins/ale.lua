return {
    'dense-analysis/ale',
    filetype = {'verilog', 'systemverilog'},
    config = function()
        vim.g.ale_linters = {
            verilog = { 'slang' },
            systemverilog = { 'slang' }
        }
        vim.g.ale_fixers = {
            verilog = { 'slang' },
            systemverilog = { 'slang' }
        }
--        vim.g.ale_verilog_slang_options = '-f ~/wa/tools/nvim/files.f -I /nfs/site/disks/crt_tools_030/intel/uvm/1.2e_ml_2021ww13/src/uvm_macros.svh'
--        vim.g.ale_verilog_slang_options = '-I /nfs/site/disks/ive_lnl_fpga_001/work/amizrah1/tools/nvim' 
--        vim.g.ale_history_log_output = 1

        -- Disable ALE globally
        vim.g.ale_enabled = 0

        -- Enable ALE only for Verilog and SystemVerilog files
        vim.api.nvim_create_autocmd("FileType", { pattern = "*verilog", desc = "", callback = function() vim.g.ale_enabled = 1 end })
    end
}
