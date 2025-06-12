local servers = {
    "ast_grep",
    "clangd",
    "lua_ls",
    "pyright",
}

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = servers,
    automatic_installation = true,
})

vim.diagnostic.config({
  virtual_text = {
    prefix = "■",
    spacing = 2,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
