return {
    'goolord/alpha-nvim',
    name = 'alpha',
    event = 'VimEnter',
    config = function()
        local alpha = require('alpha')
        local dashboard = require('alpha.themes.dashboard')

        -- Set header
        dashboard.section.header.val = {
            '                                                     ',
            '       █╗██╗█████╗ ██╗   ██╗██╗███╗   ███╗           ',
            '       █║██║██╔═██╗██║   ██║██║████╗ ████║           ',
            '       █║██║████╗╚╝██║   ██║██║██╔████╔██║           ',
            '   █   █║██║██╔═██╗╚██╗ ██╔╝██║██║╚██╔╝██║           ',
            '   ╚███╔╝██║██║ ██║ ╚████╔╝ ██║██║ ╚═╝ ██║           ',
            '    ╚══╝ ╚═╝╚═╝ ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝           ',
            '                                                     ',
        }

        -- Set menu
        dashboard.section.buttons.val = {
            dashboard.button('n', '  > New file', ':ene <BAR> startinsert <CR>'),
            dashboard.button('i', '  > open init file', ':e ~/.config/nvim/init.lua <CR>'),
            dashboard.button('v', '  > open vim-options file', ':e ~/.config/nvim/lua/vim-options.lua <CR>'),
            dashboard.button('c', '  > open Co-Pilot file', ':e ~/wa/tools/nvim/copilot_scratchpad.txt <CR>'),
            dashboard.button('p', '  > open plugins directory', ':e ~/.config/nvim/lua/plugins <CR>'),
            dashboard.button('f', '  > Find file', ':Telescope find_files<CR>'),
            dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
            dashboard.button('s', '  > Settings', ':e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>'),
            dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
        }
        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
    end
}
