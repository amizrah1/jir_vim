-- based on https://www.youtube.com/watch?v=zHTeCSVAFNY&t=390s&ab_channel=typecraft

-- fix due to setHDK wrap git command with script
vim.env.PATH = '/usr/intel/pkgs/gcc/12.2.0/bin /usr/intel/pkgs/nodejs/18.13.0/bin:/usr/intel/pkgs/python3/3.11.1/bin:/usr/intel/bin' .. vim.env.PATH
vim.fn.setenv('CFLAGS',"-std=c99")

-- setting proxy if not defined by user
local http_proxy = vim.fn.getenv('HTTP_PROXY')
if http_proxy == vim.NIL then
    -- print("setting proxy")
    vim.fn.setenv("HTTP_PROXY", "http://proxy.hf.intel.com:911")
    vim.fn.setenv("HTTPS_PROXY", "http://proxy.hf.intel.com:911")
    vim.fn.setenv("no_proxy", ".intel.com,localhost,127.0.0.0/8,10.0.0.0/8,172.16.0.0/20,192.168.0.0/16")
end


require("vim-options")
require("lazy_conf")

