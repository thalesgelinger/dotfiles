return {
    --"thalesgelinger/xcode.nvim",
    name = "xcode.nvim",
    dir = "/Users/tgelin01/Projects/xcode.nvim",
    dev = true,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim'
    },
    config = function()
        local xcode = require("xcode")
        vim.keymap.set('n', '<leader>xc', xcode.add_class)
        vim.keymap.set('n', '<leader>xa', xcode.add_assets)
    end
}
