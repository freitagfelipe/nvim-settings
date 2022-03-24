local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
    print("You need treesitter!")

    return
end

treesitter.setup {
    ensure_installed = {
        "bash",
        "c",
        "c_sharp",
        "cpp",
        "cmake",
        "css",
        "dockerfile",
        "elixir",
        "go",
        "gomod",
        "gowork",
        "haskell",
        "html",
        "java",
        "javascript",
        "jsonc",
        "lua",
        "make",
        "python",
        "regex",
        "ruby",
        "rust",
        "scss",
        "tsx",
        "typescript",
        "vim"
    },
    sync_install = false,
    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = true
    },
    indent = {enable = true, disable = {}}
}
