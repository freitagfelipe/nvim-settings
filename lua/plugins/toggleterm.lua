local present, toggleterm = pcall(require, "toggleterm")

if not present then
    print("You need toggleterm!")

    return
end

toggleterm.setup {
    size = 10,
    open_mapping = [[<c-t>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 1,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = false,
    direction = "float",
    float_opts = {
        border = "curved",
        width = math.floor(vim.o.columns * 0.5),
        height = math.floor(vim.o.lines * 0.5)
    },
    close_on_exit = true,
    shell = vim.o.shell,
    on_close = function()
       vim.cmd[[:NvimTreeRefresh]]
    end
}
