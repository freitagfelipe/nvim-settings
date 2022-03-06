local function map(mode, keys, mapping, options)
    if options == nil then
        options = {noremap = true, silent = true}
    end

    vim.api.nvim_set_keymap(mode, keys, mapping, options)
end

------ Normal nvim mappings ------

map('n', "<C-s>", ":w<CR>")
map('n', "<C-q>", ":q!<CR>")
map('n', "<C-Left>", ":bnext<CR>")
map('n', "<C-Right>", ":bprev<CR>")

map('i', "<C-s>", "<ESC>:w<CR>a")
map('i', "<S-Tab>", "<ESC>:<<CR>i")
map('i', "<C-q>", "<ESC>:q!<CR>")

------ Nvim tree mappings ------

map('n', "<Space>", ":NvimTreeToggle<CR>")
map('n', "<C-Bslash>", ":NvimTreeFocus<CR>")
map('n', "<C-h>", "<C-w>h")
map('n', "<C-l>", "<C-w>l")

map('i', "<C-Bslash>", "<ESC>:NvimTreeFocus<CR>")

------ Toggle term mappings ------

map('n', "<C-t>", ":ToggleTerm<CR>")

------ Vim-bbye mappings ------

map('n', "<C-w>", ":Bdelete<CR>")

map('i', "<C-w>", "<ESC>:Bdelete<CR>")
