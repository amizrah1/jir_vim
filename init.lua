-- based on https://www.youtube.com/watch?v=zHTeCSVAFNY&t=390s&ab_channel=typecraft


-- fix due to setHDK wrap git command with something else
vim.env.PATH = '/usr/intel/pkgs/nodejs/18.13.0/bin:/usr/intel/pkgs/python3/3.11.1/bin:/usr/intel/bin' .. vim.env.PATH

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins", {
    import = "plugins",
    change_detection = {
        notify = false,
    },
})
