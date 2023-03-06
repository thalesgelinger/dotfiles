local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'svelte',
})

lsp.configure('dartls', {force_setup = true})
lsp.configure('svelte', {force_setup = true})

lsp.nvim_workspace()

lsp.setup()
