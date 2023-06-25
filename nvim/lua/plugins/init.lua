return {
    -- Theme
    -- use { 'dracula/vim', { as = 'dracula' } }
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

    'reisub0/hot-reload.vim',
    'neovim/nvim-lspconfig',
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate" -- :MasonUpdate updates registry contents
    },
    'pantharshit00/vim-prisma',
    --use 'leafOfTree/vim-svelte-plugin'
    { 'kyazdani42/nvim-web-devicons', lazy = true },
    'metakirby5/codi.vim'
}
