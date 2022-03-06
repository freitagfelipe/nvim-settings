local theme_name = "onedark"
local present, theme = pcall(require, "themes." .. theme_name)

if not present then
    print("You need a theme setup in themes/" .. theme_name .. "!")

    return
end

theme()
