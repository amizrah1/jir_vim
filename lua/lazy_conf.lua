-- Lazy plugin - should be moved to a different file
-- fix due to setHDK wrap git command with script
local lazypath = "~amizrah1/.local/share/nvim/lazy/lazy.nvim"
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

require("lazy").setup("plugins", {
    import = "plugins",
    change_detection = {
        notify = false,
    },
})
