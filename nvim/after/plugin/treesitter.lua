require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "typescript", "lua", "rust", "svelte", "html" },

  sync_install = true,

  auto_install = true,

  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
  }
}

vim.g.vim_svelte_plugin_load_full_syntax = 1
