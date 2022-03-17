local present, _ = pcall(require, "kommentary.config")

if not present then
    print("You need kommentary!")

    return
end
