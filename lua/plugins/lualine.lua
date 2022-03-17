local present, lualine = pcall(require, "lualine")

if not present then
    print("You need lualine!")

    return
end

lualine.setup {
    options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = {left = "", right = ""},
        section_separators = {left = "◣", right = "◢"},
        disabled_filetypes = {
            "toggleterm",
            "NvimTree",
            "vim-plug"
        }
    },
    sections = {
        lualine_b = {"branch", {"diff", symbols = {added = "", modified = "", removed = ""}}, "diagnostics"},
        lualine_x = {"encoding", "hostname", "filetype"}
    }
}
