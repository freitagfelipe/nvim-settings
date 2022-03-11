local present, impatient = pcall(require, "impatient")

if not present then
    print("You need impatient!")

    return
end

impatient.enable_profile()
