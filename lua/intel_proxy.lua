-- setting proxy if not defined by user
local http_proxy = vim.fn.getenv('HTTP_PROXY')
if http_proxy == vim.NIL then
    --print("setting proxy")
    vim.fn.setenv("HTTP_PROXY", "http://proxy.hf.intel.com:911")
    vim.fn.setenv("HTTPS_PROXY", "http://proxy.hf.intel.com:911")
    vim.fn.setenv("no_proxy", ".intel.com,localhost,127.0.0.0/8,10.0.0.0/8,172.16.0.0/20,192.168.0.0/16")
end

