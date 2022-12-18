require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "typescript", "lua", "rust" },

  auto_install = true,

  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
  }
}
