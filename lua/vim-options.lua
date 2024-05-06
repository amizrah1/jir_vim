-- default configuration 
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=0")
vim.cmd("set shiftwidth=4")
vim.cmd("set ruler")
vim.cmd("set number")
vim.cmd("set noswapfile")
vim.cmd("set nowrap")
vim.g.mapleader = " "

-- switch between buffers with ALT+up and ALT+down arrow
vim.cmd("nmap <silent> <A-Up> :bprev <CR>")
vim.cmd("nmap <silent> <A-Down> :bnext <CR>")

-- change buffer size using CTRL+"+"
vim.cmd("noremap + <C-W>+")
vim.cmd("noremap _ <C-W>-")

-- press | to turn off the last search highlight
vim.keymap.set('n', '|', ':nohlsearch<CR>', {})


