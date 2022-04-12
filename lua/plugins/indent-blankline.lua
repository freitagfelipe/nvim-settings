local present, indent_blankline = pcall(require, "indent_blankline")

if not present then
    print("You need indent_blankline!")

    return
end

indent_blankline.setup {
    show_end_of_line = false,
    show_current_context_start = true,
    char = "▏",
    show_trailing_blankline_indent = false,
    filetype_exclude = {
        "lspinfo",
        "lsp-installer",
        "terminal",
        "NvimTree"
    },
    buftype_exclude = {
        "terminal"
    }
}
