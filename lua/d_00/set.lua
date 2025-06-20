vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.smartindent = true
vim.o.breakindent = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.signcolumn = "yes"

vim.o.mouse = "a"

-- no clipboard on Windows, since it slows down Neovim
if vim.fn.has("wsl") == 0 then
    vim.o.clipboard = "unnamedplus"
end

vim.o.shellcmdflag=-ic

vim.o.scrolloff = 5
vim.o.colorcolumn = "80"

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.termguicolors = true

-- trailing spaces--
vim.o.listchars = "tab:>-,trail:█"
vim.o.list = true
