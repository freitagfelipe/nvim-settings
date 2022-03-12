local present, nvim_ts_autotag = pcall(require, "nvim-ts-autotag")

if not present then
    print("You need nvim-ts-autotag!")

    return
end

nvim_ts_autotag.setup({
    filetypes = {
        "html",
        "javascript",
        "typescript",
        "javascriptreact",
        "typescriptreact",
        "tsx",
        "jsx"
    },
    skip_tag = {
        "area", "base", "br", "col", "command", "embed", "hr", "img", "slot",
        "input", "keygen", "link", "meta", "param", "source", "track", "wbr",
        "menuitem"
    },
    enable_rename = true,
    enable_close = true
})
