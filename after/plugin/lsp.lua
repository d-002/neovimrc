require("mason").setup({
    PATH = "append"
})

local servers = {
    "clangd",
    "lua_ls",
    --"jdtls",
    "pyright",
    "phpactor",
    "deno",
    "texlab",
}

require("mason-lspconfig").setup({
    ensure_installed = servers,
    automatic_installation = true,
})

for _, server in ipairs(servers) do
    if server == "pylsp" then
        vim.lsp.config(server, {
            settings = {
                pylsp = {
                    plugins = {
                        flake8 = {
                            enabled = true,
                        },
                        pycodestyle = {
                            enabled = true,
                        },
                    },
                },
            },
        })
    elseif server == "lua_ls" then
        vim.lsp.config(server, {
            settings = {
                Lua = {
                    runtime = {
                        version = "LuaJIT",
                    },
                    diagnostics = {
                        globals = {
                            "vim",
                            "require",
                        },
                    },
                },
            },
        })
    else
        vim.lsp.config(server, {})
    end
end

vim.diagnostic.config({
    virtual_text = true,
    virtual_lines = false,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})
