return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })
    end,
    setup = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "typescript", "lua", "rust", "svelte", "html", "cmake", "c" },
            -- ensure_installed = "maintained",
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
