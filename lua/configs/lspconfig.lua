require("nvchad.configs.lspconfig").defaults()

local servers = { "clangd", "lua_ls", "glsl_analyzer" }
vim.lsp.config('clangd', {
    cmd = {
        'clangd',
        '--header-insertion=never',
    },
})

vim.lsp.enable(servers)
