return {
    "thalesgelinger/anyrun.nvim",
    --name = "anyrun.nvim",
    --dir = "/Users/tgelin01/Projects/anyrun.nvim",
    --dev = true,
    config = function()
        local anyrun = require("anyrun")
        anyrun.setup({
            go = { "go", "run" },
            js = { "node" },
            rs = { "cargo", "run" },
        })

        vim.keymap.set("n", "<leader>rr", anyrun.execute)
    end
}
