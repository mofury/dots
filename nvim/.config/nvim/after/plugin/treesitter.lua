require("nvim-treesitter.configs").setup({
    -- Install all maintained parsers
    ensure_installed = "all",

    -- Enable highlighting
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    -- Use treesitter for indentation
    indent = {
        enable = true,
    },

    -- Enable incremental selection
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },

    -- Color code brackets, braces, etc.
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },

})

