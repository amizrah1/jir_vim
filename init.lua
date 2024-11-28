-- based on https://www.youtube.com/watch?v=zHTeCSVAFNY&t=390s&ab_channel=typecraft

-- fix due to setHDK wrap git command with script
require("vim-options")
require("lazy_conf")

-- Enable true color support
if vim.fn.has("termguicolors") == 1 then
  vim.opt.termguicolors = true
end

vim.cmd.colorscheme("melange")
--vim.cmd.colorscheme("alchemist")

