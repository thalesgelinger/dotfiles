return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' }, -- Required
        {                            -- Optional
            'williamboman/mason.nvim',
            build = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },     -- Required
        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'L3MON4D3/LuaSnip' },     -- Required
    },
    config = function()
        local lsp = require('lsp-zero')


        lsp.preset('recommended')

        lsp.on_attach(function(client, bufnr)
            lsp.default_keymaps({ buffer = bufnr })
        end)

        lsp.ensure_installed({
            'tsserver',
            'eslint',
            'svelte',
            'volar',
        })

        lsp.configure('dartls', { force_setup = true })
        lsp.configure('svelte', { force_setup = true })
        lsp.configure('volar', { force_setup = true })

        lsp.nvim_workspace()

        lsp.setup()

        vim.diagnostic.config({
            virtual_text = true,
        })

        -- (Optional) Configure lua language server for neovim
        require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

        local cmp = require('cmp')
        local cmp_action = lsp.cmp_action()

        cmp.setup({
            mapping = {
                -- `Enter` key to confirm completion
                ['<CR>'] = cmp.mapping.confirm({ select = false }),

                -- Ctrl+Space to trigger completion menu
                ['<C-Space>'] = cmp.mapping.complete(),
            }
        })
    end
}
