return {
    -- NOTE: First, some plugins that don't require any configuration
    -- Git related plugins
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',

    -- {
    --     -- Autocompletion
    --     'hrsh7th/nvim-cmp',
    --     dependencies = {
    --         -- Snippet Engine & its associated nvim-cmp source
    --         'L3MON4D3/LuaSnip',
    --         'saadparwaiz1/cmp_luasnip',
    --
    --         -- Adds LSP completion capabilities
    --         'hrsh7th/cmp-nvim-lsp',
    --         'hrsh7th/cmp-path',
    --
    --         -- Adds a number of user-friendly snippets
    --         'rafamadriz/friendly-snippets',
    --     },
    -- },

    -- Useful plugin to show you pending keybinds.
    { 'folke/which-key.nvim',  opts = {} },

    {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = false,
                theme = 'onedark',
                component_separators = '|',
                section_separators = '',
            },
        },
    },

    {
        -- Add indentation guides even on blank lines
        'lukas-reineke/indent-blankline.nvim',
        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help ibl`
        main = 'ibl',
        opts = {},
    },

    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },
}
