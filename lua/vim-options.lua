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
vim.keymap.set('n', 'gg', "0gg", { desc = 'jump to first char in first line' })

--vim.keymap.set('n', '<Home>', '0')
--vim.keymap.set('n', '<End>', '$')

-- Pressing \\ shows the current directory
vim.keymap.set('c', '\\\\', "<C-R>=expand('%:p:h').'/'<CR>", { desc = 'current file full path' })

-- switch between buffers with ALT+up and ALT+down arrow
vim.keymap.set('n', '<A-Up>',   ':bprev<CR>', { desc = 'go to previous buffer' })
vim.keymap.set('n', '<A-Down>', ':bnext<CR>', { desc = 'go to next buffer' })

-- copy and paste from clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>sy', '"+y', { desc = 'copy to system clipboard' })
vim.keymap.set({ 'v' }, '<C-C>', '"+y', { desc = 'copy to system clipboard' })
vim.keymap.set('n', '<leader>sp', '"+p', { desc = 'paste from system clipboard' })

-- change buffer size using CTRL+"+"
vim.keymap.set('n', '+', '<C-W>+', { desc = 'increase split size' })
vim.keymap.set('n', '_', '<C-W>-', { desc = 'decreset split size' })

-- move line with ALT up or down
vim.keymap.set('n', '<A-S-Down>', ":m .+1<CR>==", { desc = 'move current line down' })
vim.keymap.set('n', '<A-S-up>',   ":m .-2<CR>==", { desc = 'move current line up' })
vim.keymap.set('v', '<A-S-Down>', ":m '>+1<CR>gv=gv", { desc = 'move current selection down' })
vim.keymap.set('v', '<A-S-Up>',   ":m '<-2<CR>gv=gv", { desc = 'move current selection up' })

-- press | to turn off the last search highlight
vim.keymap.set('n', '|', ':nohlsearch<CR>', { desc = 'turn off search highlight' })

-- open the information window
vim.keymap.set('n', '<C-I>', ":SidebarNvimToggle<CR>", { desc = 'toggle SideBar Info' })

-- toggle spell check on comments only
-- vim.api.nvim_set_keymap('n', '<F9>',   ':set spell!<CR>', { desc = 'toggle spell check', noremap = true, silent = true })

-- toggle precognition - -add line below text with hints where to jump to 
vim.keymap.set('n', '<F9>', function() require("precognition").toggle() end, { desc = 'toggle precognition', noremap = true, silent = true })
