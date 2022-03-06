local present, onedark = pcall(require, "onedark")

if not present then
    return function()
        print("You need onedark!")
    end
end

local function setup()
    onedark.setup  {
        style = "darker",
        transparent = false,
        term_colors = true,
        ending_tildes = false,
        toggle_style_key = "<leader>ts",
        toggle_style_list = {"dark", "darker", "cool", "deep", "warm", "warmer", "light"},
        code_style = {
            comments = "italic",
            keywords = "none",
            functions = "none",
            strings = "none",
            variables = "none"
        },
        colors = {},
        highlights = {},
        diagnostics = {
            darker = true,
            undercurl = true,
            background = true,
        }
    }

    onedark.load()
end

return setup
