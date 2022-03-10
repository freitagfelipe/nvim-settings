local present, _ = pcall(require, "nvim-lsp-installer")

if not present then
    print("You need nvim-lsp-installer!")

    return
end

require("plugins.lsp.nvim-lsp-installer")
require("plugins.lsp.settings").setup()
