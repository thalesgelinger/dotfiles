vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- Theme
    -- use { 'dracula/vim', { as = 'dracula' } }
    use 'Mofiqul/dracula.nvim'
    -- use "folke/tokyonight.nvim"
    -- use { "kyoz/purify", rtp = 'vim' }
    -- use "lunarvim/synthwave84.nvim"
    -- use "nyoom-engineering/nyoom.nvim"
    -- use { "bluz71/vim-nightfly-colors", as = "nightfly" }
    -- use({
    -- 'rose-pine/neovim',
    -- as = 'rose-pine',
    -- })
    -- use "ray-x/aurora"

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 'nvim-treesitter/nvim-treesitter' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'reisub0/hot-reload.vim'

    use 'jose-elias-alvarez/null-ls.nvim'
    use 'MunifTanjim/prettier.nvim'

    use 'lewis6991/gitsigns.nvim'
    use {
        "akinsho/flutter-tools.nvim",
        requires = "nvim-lua/plenary.nvim",
    }
    use { 'ThePrimeagen/harpoon', require = 'nvim-lua/plenary.nvim' }
    use { 'windwp/nvim-ts-autotag' }
    use { 'BenGH28/neo-runner.nvim' }
    use { "tpope/vim-fugitive" }
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    use "terrortylor/nvim-comment"
    use 'mfussenegger/nvim-dap'
    use 'pantharshit00/vim-prisma'
    --use 'leafOfTree/vim-svelte-plugin'
    use 'nvim-tree/nvim-web-devicons'
    use 'prichrd/netrw.nvim'

    -- colorize
    use 'norcalli/nvim-colorizer.lua'
    use 'mbbill/undotree'
end)
