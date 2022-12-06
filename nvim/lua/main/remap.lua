local nnoremap = require("main.keymap").nnoremap

nnoremap("<leader>e", "<cmd>Ex<CR>")
nnoremap("<C-s>", "<cmd>w<CR>")
nnoremap("<C-q>", "<cmd>q<CR>")

nnoremap("n", "nzz") 
nnoremap("N", "Nzz") 

nnoremap("<leader>f", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>s", "<cmd>Telescope live_grep<CR>")
