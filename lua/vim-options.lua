-- default configuration
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=0")
vim.cmd("set shiftwidth=4")
vim.cmd("set ruler")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set noswapfile")
vim.cmd("set nowrap")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.g.mapleader = " "


-- due to nvim issue gg not going to first char in line
vim.keymap.set('n', 'gg', "0gg")

-- Pressing \\ shows the current directory
vim.keymap.set('c', '\\\\', "<C-R>=expand('%:p:h').'/'<CR>")

-- switch between buffers with ALT+up and ALT+down arrow
vim.keymap.set('n', '<A-Up>',   ':bprev<CR>')
vim.keymap.set('n', '<A-Down>', ':bnext<CR>')

-- copy and paste from clipboard
vim.keymap.set({'n', 'v'}, '<leader>sy', '"+y')
vim.keymap.set({'v'}, '<C-C>', '"+y')
vim.keymap.set('n', '<leader>sp', '"+p')

-- change buffer size using CTRL+"+"
vim.keymap.set('n', '+', '<C-W>+')
vim.keymap.set('n', '_', '<C-W>-')

-- move line with ALT up or down
vim.keymap.set('n', '<A-S-Down>', ":m .+1<CR>==")
vim.keymap.set('n', '<A-S-up>',   ":m .-2<CR>==")
vim.keymap.set('v', '<A-S-Down>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-S-Up>',   ":m '<-2<CR>gv=gv")

-- press | to turn off the last search highlight
vim.keymap.set('n', '|', ':nohlsearch<CR>', {})

-- open the information window
vim.keymap.set('n', '<C-I>', ":SidebarNvimToggle<CR>")

