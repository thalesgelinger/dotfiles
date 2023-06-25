return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })
    end,
    config = function ()
        require'nvim-treesitter.configs'.setup ({
          ensure_installed = { "typescript", "lua", "rust", "svelte", "html" },
          sync_install = true,
          auto_install = true,
          highlight = {
            enable = true
          },
          autotag = {
            enable = true
          }
        })
    end
}
