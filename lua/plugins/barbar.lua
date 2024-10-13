return {
    'romgrk/barbar.nvim',
    name = 'barbar',
    dependencies = {
        'lewis6991/gitsigns.nvim',
        'nvim-tree/nvim-web-devicons',
    },
    init = function()
        vim.g.barbar_auto_setup = false
        -- autocommand to reorder BufferOrderByBufferNumber
        vim.cmd [[
            augroup barbar
                autocmd!
                autocmd BufEnter * silent! BufferOrderByBufferNumber
            augroup END
        ]]
    end,
    opts = {
        animation = false,
        tagpage = true,
    },
    version = '^1.0.0',
}

-- when buffers are out of order use :BufferOrderByBufferNumber
