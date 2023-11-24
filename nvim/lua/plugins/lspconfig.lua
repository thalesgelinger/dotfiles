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

        lsp.configure('svelte', { force_setup = true })
        lsp.configure('volar', { force_setup = true })

        lsp.skip_server_setup({ 'jdtls' })

        lsp.nvim_workspace()

        lsp.setup()

        vim.diagnostic.config({
            virtual_text = true,
        })

        -- (Optional) Configure lua language server for neovim
        local lspconfig = require('lspconfig')
        lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
        lspconfig.dartls.setup {}
        lspconfig.clangd.setup {}
        lspconfig.htmx.setup {
            filetypes = { "leaf", "html" }
        }
        vim.cmd [[ autocmd BufRead,BufNewFile *.leaf set filetype=html ]]


        lsp.on_attach(function(client, bufnr)
            local opts = { buffer = bufnr, remap = false }
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.rename() end, opts)
            vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        end)

        local swift_lsp = vim.api.nvim_create_augroup("swift_lsp", { clear = true })
        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "swift" },
            callback = function()
                local root_dir = vim.fs.dirname(vim.fs.find({
                    "Package.swift",
                    ".git",
                }, { upward = true })[1])
                local client = vim.lsp.start({
                    name = "sourcekit-lsp",
                    cmd = { "sourcekit-lsp" },
                    root_dir = root_dir,
                })
                vim.lsp.buf_attach_client(0, client)
            end,
            group = swift_lsp,
        })

        local cmp = require('cmp')

        cmp.setup({
            mapping = {
                -- Ctrl+Space to trigger completion menu
                ['<C-Space>'] = cmp.mapping.complete(),
            }
        })
    end
}
