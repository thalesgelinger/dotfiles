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
