local M = {}

M.setup = function()
    local signs = {
        {name = "DiagnosticSignError", symbol = ""},
        {name = "DiagnosticSignWarn", symbol = ""},
        {name = "DiagnosticSignHint", symbol = ""},
        {name = "DiagnosticSignInfo", symbol = ""}
    }

    for _, sign in ipairs(signs) do
        vim.fn.sign_define(sign.name, {texthl = sign.name, text = sign.symbol, numhl = ""})
    end

    local config = {
        virtual_text = false,
        signs = {
            active = true
        },
        update_in_insert = true,
        underline = false,
        severity_sort = true,
        float = {
            focusable = false,
            style = "minimal",
            border = "rounded",
            source = "always",
            header = "",
            prefix = ""
        }
    }

    vim.diagnostic.config(config)

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = "rounded"
    })

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
        border = "rounded"
    })
end

M.on_attach = function(_, bufnr)
    local options = {noremap = true, silent = true}

    vim.api.nvim_buf_set_keymap(bufnr, 'n', "<S-k>", "<cmd>lua vim.lsp.buf.hover()<CR>", options)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", options)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', "gl", "<cmd>lua vim.diagnostic.open_float({bufrn = 0})<CR>", options)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', "go", "<cmd>lua vim.lsp.buf.signature_help()<CR>", options)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', "gr", "<cmd>lua vim.lsp.buf.rename()<CR>", options)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', "gL", "<cmd>lua vim.lsp.buf.references()<CR>", options)
end

return M
