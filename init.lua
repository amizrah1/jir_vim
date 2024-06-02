-- based on https://www.youtube.com/watch?v=zHTeCSVAFNY&t=390s&ab_channel=typecraft

-- fix due to setHDK wrap git command with script
vim.env.PATH = '/usr/intel/pkgs/nodejs/18.13.0/bin:/usr/intel/pkgs/python3/3.11.1/bin:/usr/intel/bin' .. vim.env.PATH

require("vim-options")
require("lazy_conf")

