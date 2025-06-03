local theme = require("onedark")

local transparency = (vim.fn.has("wsl") or not vim.fn.has("windows")) ~= 0

theme.setup {
    style = "warmer",
    transparent = transparency,

    lualine = {
        transparent = true,
    }
}
theme.load()
