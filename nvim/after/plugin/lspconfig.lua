local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'svelte',
  'volar'
})

lsp.configure('dartls', {force_setup = true})
lsp.configure('svelte', {force_setup = true})
lsp.configure('volar', {force_setup = true})


lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
})


local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),
  }
})
