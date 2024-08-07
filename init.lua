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

