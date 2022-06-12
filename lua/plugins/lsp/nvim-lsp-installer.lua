local present, lsp_installer = pcall(require, "nvim-lsp-installer")

if not present then
    print("You need nvim-lsp-installer!")

    return
end

local path = require("nvim-lsp-installer.core.path")

local servers = {
    "bashls",
    "clangd",
    "csharp_ls",
    "cmake",
    "cssls",
    "dockerls",
    "gopls",
    "html",
    "hls",
    "jdtls",
    "tsserver",
    "sumneko_lua",
    "pylsp",
    "rust_analyzer",
    "solargraph"
}

lsp_installer.settings({
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        },
        border = "rounded"
    },
    install_root_dir = path.concat {os.getenv("HOME"), ".config/nvim/autoload/lsp_servers"}
})

for _, name in pairs(servers) do
    local server_is_found, server = lsp_installer.get_server(name)

    if server_is_found then
        if not server:is_installed() then
            print("Installing " .. name)

            server:install()
        end
    end
end

lsp_installer.on_server_ready(function(server)
    local options = {
        capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
        on_attach = require("plugins.lsp.settings").on_attach
    }

    if server.name == "sumneko_lua" then
        local sumneko_lua = require("plugins.lsp.language-settings.sumneko_lua")

        options = vim.tbl_deep_extend("force", sumneko_lua, options)
    end

    server:setup(options)

    vim.cmd [[ do User LspAttachBuffers ]]
end)
