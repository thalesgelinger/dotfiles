return {
    "tpope/vim-fugitive",
    config = function()
        --Fugitive
        vim.keymap.set("n", "<leader>gs", "<cmd>Git<CR>")
        vim.keymap.set("n", "<leader>gp", "<cmd>Git pull<CR>")
        vim.keymap.set("n", "<leader>gt", "<cmd>Git log --oneline --graph<CR>")

        vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
        vim.keymap.set("n", "gr", "<cmd>diffget //3<CR>")
    end
}
