require("onedark").setup {
    style = "warmer"
}

local status, _ = pcall(vim.cmd, "colorscheme onedark")
if not status then
    print("color scheme not found")
    return
end
