vim.g.mapleader = " "

-- Text, Tabs and Indents
vim.opt.shiftwidth     = 4              -- Set the number of space characters inserted for indentation.
vim.opt.expandtab      = true           -- Insert space characters whenever the <TAB> key is pressed.
vim.opt.tabstop        = 4              -- Set the number of space characters that will be inserted when the <TAB> key is pressed
vim.opt.softtabstop    = 0              -- Sets the length of soft tab in spaces

-- General
vim.opt.swapfile       = false          -- don't create swap files
vim.opt.relativenumber = true           --
vim.opt.number         = true           -- Show line numbers
vim.opt.wrap           = false          -- Lines longer than the width of the window won't be wrapped to the next line.
vim.opt.ruler          = true           -- Show the line and column number of the cursor position, separated by acomma. 

-- Case sensitivity and Search
vim.opt.ignorecase     = true           -- Ignore case in search.
vim.opt.smartcase      = true           -- Override the ignorecase setting if the search patterns contains upper case characters.

vim.keymap.set('n', 'gg', "0gg",                      { desc = 'jump to first char in first line' })
vim.keymap.set('n', '<A-Up>',   ':bprev<CR>',         { desc = 'go to previous buffer' })
vim.keymap.set('n', '<A-Down>', ':bnext<CR>',         { desc = 'go to next buffer' })
vim.keymap.set('n', '<leader>sy', '"+y',              { desc = 'copy to system clipboard' })
vim.keymap.set('v', '<leader>sy', '"+y',              { desc = 'copy to system clipboard' })
vim.keymap.set('v', '<C-C>', '"+y',                   { desc = 'copy to system clipboard' })
vim.keymap.set('n', '<leader>sp', '"+p',              { desc = 'paste from system clipboard' })
vim.keymap.set('n', '+', '<C-W>+',                    { desc = 'increase split size' })
vim.keymap.set('n', '_', '<C-W>-',                    { desc = 'decreset split size' })
vim.keymap.set('n', '<A-S-Down>', ":m .+1<CR>==",     { desc = 'move current line down' })
vim.keymap.set('n', '<A-S-up>',   ":m .-2<CR>==",     { desc = 'move current line up' })
vim.keymap.set('v', '<A-S-Down>', ":m '>+1<CR>gv=gv", { desc = 'move current selection down' })
vim.keymap.set('v', '<A-S-Up>',   ":m '<-2<CR>gv=gv", { desc = 'move current selection up' })
vim.keymap.set('n', '|', ':nohlsearch<CR>',           { desc = 'turn off search highlight' })
vim.keymap.set('c', '<Bslash><Bslash>', "<C-R>=expand('%:p:h').'/'<CR>", { desc = 'current file full path' })

