local present, cmp = pcall(require, "cmp")

if not present then
    print("You need cmp!")

    return
end

local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = ""
}

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-y>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Insert,
            select = true
        },
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({select = true}),
    },
    sources = cmp.config.sources({
        {name = "nvim_lsp"},
        {name = "nvim_lua"},
        {name = "nvim_path"},
        {name = "luasnip"},
        {name = "buffer", keyword_length = 5}
    }),
    experimental = {
        ghost_text = true
    },
    documentation = {
        border = {"╭", "─", "╮", "│", "╯", "─", "╰", "│"}
    },
    formatting = {
        fields = {"kind", "abbr", "menu"},
        format = function(entry, vim_item)
            vim_item.kind = string.format("%s", kind_icons[vim_item.kind])

            vim_item.menu = ({
                nvim_lsp = "[LSP]",
                luasnip = "[Snippet]",
                buffer = "[Buffer]",
                path = "[Path]"
            })[entry.source.name]

            return vim_item
        end
    },
    view = {
    	entries = "custom"
    }
})
