return require("packer").startup(function()
    -- Package management
    use "wbthomason/packer.nvim"

    -- Treesitter
    use "nvim-treesitter/nvim-treesitter"
    use "p00f/nvim-ts-rainbow"

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"

    -- Extended language support
    use "sheerun/vim-polyglot"

    -- Completion
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/nvim-cmp"
    use "quangnguyen30192/cmp-nvim-ultisnips"

    -- Git Integration
    use { "TimUntersberger/neogit",
        requires = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim"
        } }
    use "lewis6991/gitsigns.nvim"

    -- Snippets
    use "SirVer/ultisnips"
    use "honza/vim-snippets"

    -- Commenting
    use "numToStr/Comment.nvim"

    -- Autopair
    use "windwp/nvim-autopairs"

    -- Tags
    use "xolox/vim-easytags"
    use "xolox/vim-misc"
    use "preservim/tagbar"

    -- Statusline
    use "ojroques/nvim-hardline"

    -- Show colors
    use { "rrethy/vim-hexokinase", run = "make hexokinase" }

end)
