-- based on https://www.youtube.com/watch?v=zHTeCSVAFNY&t=390s&ab_channel=typecraft

-- fix due to setHDK wrap git command with something else
vim.env.PATH = '/usr/intel/pkgs/nodejs/18.13.0/bin:/usr/intel/pkgs/python3/3.11.1/bin:/usr/intel/bin' .. vim.env.PATH

-- setting proxy if not defined by user
local http_proxy = vim.fn.getenv('HTTP_PROXY')
if http_proxy == vim.NIL then
    print("setting proxy")
    vim.fn.setenv("HTTP_PROXY", "http://proxy.hf.intel.com:911")
    vim.fn.setenv("HTTPS_PROXY", "http://proxy.hf.intel.com:911")
    vim.fn.setenv("no_proxy", ".intel.com,localhost,127.0.0.0/8,10.0.0.0/8,172.16.0.0/20,192.168.0.0/16")
end

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
