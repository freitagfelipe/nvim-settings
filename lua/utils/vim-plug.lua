local fn = vim.fn
local installed = true

if fn.empty(fn.glob("$HOME/.config/nvim/autoload/plug.vim")) > 0 then
    installed = false

    local install_path = os.getenv("HOME").."/.config/nvim/autoload"

    os.execute("mkdir " .. install_path)
    os.execute("wget -q -P " .. install_path .. " https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
end

local configs = {}

local function configure_packages()
    for _, config in pairs(configs) do
        config()
    end
end

local Plug = {
    begin = vim.fn["plug#begin"],
    ends = function()
        vim.fn["plug#end"]()

        if not installed then
            vim.cmd("PlugInstall")
        end

        configure_packages()
    end
}


local meta = {
    __call = function(_, package, opts)
        local options = opts or vim.empty_dict()

        vim.call("plug#", package, options)

        if options["config"] ~= nil then
            configs[package] = opts.config
        end
    end
}

return setmetatable(Plug, meta)
