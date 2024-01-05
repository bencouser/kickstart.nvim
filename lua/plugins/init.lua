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
    -- {
    --     -- Adds git related signs to the gutter, as well as utilities for managing changes
    --     'lewis6991/gitsigns.nvim',
    --     opts = {
    --         -- See `:help gitsigns.txt`
    --         signs = {
    --             add = { text = '+' },
    --             change = { text = '~' },
    --             delete = { text = '_' },
    --             topdelete = { text = '‾' },
    --             changedelete = { text = '~' },
    --         },
    --         on_attach = function(bufnr)
    --             local gs = package.loaded.gitsigns
    --
    --             local function map(mode, l, r, opts)
    --                 opts = opts or {}
    --                 opts.buffer = bufnr
    --                 vim.keymap.set(mode, l, r, opts)
    --             end
    --
    --             -- Navigation
    --             map({ 'n', 'v' }, ']c', function()
    --                 if vim.wo.diff then
    --                     return ']c'
    --                 end
    --                 vim.schedule(function()
    --                     gs.next_hunk()
    --                 end)
    --                 return '<Ignore>'
    --             end, { expr = true, desc = 'Jump to next hunk' })
    --
    --             map({ 'n', 'v' }, '[c', function()
    --                 if vim.wo.diff then
    --                     return '[c'
    --                 end
    --                 vim.schedule(function()
    --                     gs.prev_hunk()
    --                 end)
    --                 return '<Ignore>'
    --             end, { expr = true, desc = 'Jump to previous hunk' })
    --
    --             -- Actions
    --             -- visual mode
    --             map('v', '<leader>hs', function()
    --                 gs.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
    --             end, { desc = 'stage git hunk' })
    --             map('v', '<leader>hr', function()
    --                 gs.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
    --             end, { desc = 'reset git hunk' })
    --             -- normal mode
    --             map('n', '<leader>hs', gs.stage_hunk, { desc = 'git stage hunk' })
    --             map('n', '<leader>hr', gs.reset_hunk, { desc = 'git reset hunk' })
    --             map('n', '<leader>hS', gs.stage_buffer, { desc = 'git Stage buffer' })
    --             map('n', '<leader>hu', gs.undo_stage_hunk, { desc = 'undo stage hunk' })
    --             map('n', '<leader>hR', gs.reset_buffer, { desc = 'git Reset buffer' })
    --             -- map('n', '<leader>hp', gs.preview_hunk, { desc = 'preview git hunk' })
    --             map('n', '<leader>hb', function()
    --                 gs.blame_line { full = false }
    --             end, { desc = 'git blame line' })
    --             map('n', '<leader>hd', gs.diffthis, { desc = 'git diff against index' })
    --             map('n', '<leader>hD', function()
    --                 gs.diffthis '~'
    --             end, { desc = 'git diff against last commit' })
    --
    --             -- Toggles
    --             map('n', '<leader>tb', gs.toggle_current_line_blame, { desc = 'toggle git blame line' })
    --             map('n', '<leader>td', gs.toggle_deleted, { desc = 'toggle git show deleted' })
    --
    --             -- Text object
    --             map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { desc = 'select git hunk' })
    --         end,
    --     },
    -- },

    {
        -- Set lualine as statusline [[NEEDED?]]
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

    {
        -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        build = ':TSUpdate',
    },

    -- NOTE: Next Step on Your Neovim Journey: Add/Configure additional "plugins" for kickstart
    --       These are some example plugins that I've included in the kickstart repository.
    --       Uncomment any of the lines below to enable them.
    -- require 'kickstart.plugins.autoformat',
    -- require 'kickstart.plugins.debug',
    --require 'custom.plugins.harpoon',
    --require 'custom.plugins.rose-pine',
    --require 'custom.plugins.copilot',

    -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
    --    You can use this folder to prevent any conflicts with this init.lua if you're interested in keeping
    --    up-to-date with whatever is in the kickstart repo.
    --    Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
    --
    --    For additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
    -- { import = 'custom.plugins' },
}
--
-- -- [[ Configure Telescope ]]
-- -- See `:help telescope` and `:help telescope.setup()`
-- require('telescope').setup {
--   defaults = {
--     mappings = {
--       i = {
--         ['<C-u>'] = false,
--         ['<C-d>'] = false,
--       },
--     },
--   },
-- }
--
-- -- Enable telescope fzf native, if installed
-- pcall(require('telescope').load_extension, 'fzf')
--
-- -- Telescope live_grep in git root
-- -- Function to find the git root directory based on the current buffer's path
-- local function find_git_root()
--   -- Use the current buffer's path as the starting point for the git search
--   local current_file = vim.api.nvim_buf_get_name(0)
--   local current_dir
--   local cwd = vim.fn.getcwd()
--   -- If the buffer is not associated with a file, return nil
--   if current_file == '' then
--     current_dir = cwd
--   else
--     -- Extract the directory from the current file's path
--     current_dir = vim.fn.fnamemodify(current_file, ':h')
--   end
--
--   -- Find the Git root directory from the current file's path
--   local git_root = vim.fn.systemlist('git -C ' .. vim.fn.escape(current_dir, ' ') .. ' rev-parse --show-toplevel')[1]
--   if vim.v.shell_error ~= 0 then
--     print 'Not a git repository. Searching on current working directory'
--     return cwd
--   end
--   return git_root
-- end
--
-- -- Custom live_grep function to search in git root
-- local function live_grep_git_root()
--   local git_root = find_git_root()
--   if git_root then
--     require('telescope.builtin').live_grep {
--       search_dirs = { git_root },
--     }
--   end
-- end
--
-- vim.api.nvim_create_user_command('LiveGrepGitRoot', live_grep_git_root, {})
--
-- -- See `:help telescope.builtin`
-- vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
-- vim.keymap.set('n', '<leader>sb', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
-- vim.keymap.set('n', '<leader>/', function()
--   -- You can pass additional configuration to telescope to change theme, layout, etc.
--   require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--     winblend = 10,
--     previewer = false,
--   })
--   vim.cmd("normal zz")
-- end, { desc = '[/] Fuzzily search in current buffer' })
--
-- local function telescope_live_grep_open_files()
--   require('telescope.builtin').live_grep {
--     grep_open_files = true,
--     prompt_title = 'Live Grep in Open Files',
--   }
-- end
-- vim.keymap.set('n', '<leader>s/', telescope_live_grep_open_files, { desc = 'Telescope: [S]earch [/] in Open Files' })
-- vim.keymap.set('n', '<leader>ss', require('telescope.builtin').builtin,
--   { desc = 'Telescope: [S]earch [S]elect Telescope' })
-- vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Telescope: Search [G]it [F]iles' })
-- vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = 'Telescope: [S]earch [F]iles' })
-- vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = 'Telescope: [S]earch [H]elp' })
-- vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string,
--   { desc = 'Telescope: [S]earch current [W]ord' })
-- vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = 'Telescope: [S]earch by [G]rep' })
-- vim.keymap.set('n', '<leader>sG', ':LiveGrepGitRoot<cr>', { desc = 'Telescope: [S]earch by [G]rep on Git Root' })
-- vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics,
--   { desc = 'Telescope: [S]earch [D]iagnostics' })
-- vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = 'Telescope: [S]earch [R]esume' })
--