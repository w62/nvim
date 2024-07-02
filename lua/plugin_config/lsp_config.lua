require("mason").setup()
require("mason-lspconfig").setup{
    ensure_insalled = { "pyright", "clangd", "gopls", "rust_analyser", "lua_ls" },
}

--[[
local on_attach = function(_, _)
    vim.keymap.set('n', '<Leader>rn', vim.lsp.buff.rename, {})
    vim.keymap.set('n', '<Leader>ca', vim.lsp.buff.code_action, {})
    vim.keymap.set('n', 'gd', vim.lsp.buff.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buff.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_refereces, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

]]--

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").clangd.setup{
on_attach = on_attach,
capabilities = capabilities
}
