-- based on https://www.youtube.com/watch?v=zHTeCSVAFNY&t=390s&ab_channel=typecraft

-- fix due to setHDK wrap git command with script
vim.env.PATH = '/usr/intel/pkgs/nodejs/18.13.0/bin:/usr/intel/pkgs/python3/3.11.1/bin:/usr/intel/bin' .. vim.env.PATH
require("intel_proxy")
require("vim-options")
require("lazy_conf")

-- Enable true color support
if vim.fn.has("termguicolors") == 1 then
  vim.opt.termguicolors = true
end

vim.opt.termguicolors = true
vim.cmd.colorscheme "melange"

require('leap').init_highlight(true)

vim.cmd [[highlight LeapLabelPrimary guifg=#ff0000 guibg=#000000]]
vim.cmd [[highlight LeapLabelSecondary guifg=#00ff00 guibg=#000000]]
--vim.cmd [[highlight LeapBackdrop guifg=#555555 guibg=#000000]]
vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, { pattern = '*.v', command = 'set filetype=verilog', group = vim.api.nvim_create_augroup('VerilogFiletype', { clear = true }) })
