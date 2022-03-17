local present, icons = pcall(require, "nvim-web-devicons")

if not present then
    print("You need nvim-web-devicons!")

    return
end

icons.setup {
    default = true;
}
