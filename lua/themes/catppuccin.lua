local present, catppuccin = pcall(require, "catppuccin")

if not present then
    return function()
        print("You need catpuccin!")
    end
end

local function setup()
    catppuccin.setup({
        transparent_background = false,
        term_colors = true,
        styles = {
	        comments = "italic",
	        functions = "NONE",
	        keywords = "NONE",
	        strings = "NONE",
	        variables = "NONE"
        },
        integrations = {
	        treesitter = true,
	        native_lsp = {
		        enabled = true,
		        virtual_text = {
		            errors = "italic",
		            hints = "italic",
                    warnings = "italic",
		            information = "italic"
	            },
		        underlines = {
			        errors = "underline",
			        hints = "underline",
			        warnings = "underline",
			        information = "underline"
		        },
	        },
	        lsp_trouble = false,
	        cmp = true,
	        lsp_saga = false,
	        gitgutter = false,
	        gitsigns = true,
	        telescope = false,
	        nvimtree = {
		        enabled = true,
		        show_root = true,
		        transparent_panel = false
	        },
	        neotree = {
		        enabled = false,
		        show_root = false,
		        transparent_panel = false
	        },
	        which_key = false,
	        indent_blankline = {
		        enabled = false,
		        colored_indent_levels = false
	        },
	        dashboard = false,
	        neogit = false,
	        vim_sneak = false,
	        fern = false,
	        barbar = false,
	        bufferline = true,
	        markdown = true,
	        lightspeed = false,
	        ts_rainbow = false,
	        hop = false,
	        notify = false,
	        telekasten = false
        }
    })

    vim.cmd[[colorscheme catppuccin]]
end

return setup
