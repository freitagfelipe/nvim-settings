local present, colorizer = pcall(require, "colorizer")

if not present then
    print("You need colorizer!")

    return
end

vim.opt.termguicolors = true

colorizer.setup {
    "*",
    css = {rgb_fn = true}
}
