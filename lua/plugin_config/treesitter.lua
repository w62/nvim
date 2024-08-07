require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_install = { "c", "lua", "rust", "vim"},

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    auto_install = true,
    hightlight = {
        enable = true,
    },
}
