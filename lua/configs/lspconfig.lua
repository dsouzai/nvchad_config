require("nvchad.configs.lspconfig").defaults()

local servers = { "clangd" }
vim.lsp.config('clangd', {
    cmd = {
        'clangd',
        '--header-insertion=never',
    },
})

vim.lsp.enable(servers)
