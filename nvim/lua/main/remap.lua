local nnoremap = require("main.keymap").nnoremap
local inoremap = require("main.keymap").inoremap

nnoremap("<leader>e", "<cmd>Ex<CR>")
nnoremap("<C-s>", "<cmd>w<CR>")
nnoremap("<C-q>", "<cmd>q<CR>")

nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

nnoremap("n", "nzz") 
nnoremap("N", "Nzz") 

nnoremap("<leader>f", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>s", "<cmd>Telescope live_grep<CR>")

inoremap("(", "()<left>")
inoremap("[", "[]<left>")
inoremap("{", "{}<left>")
inoremap("<", "<><left>")
inoremap("{<CR>", "{<CR>}<ESC>0")
inoremap("{;<CR>", "{<CR>};<ESC>0")
inoremap("\"", "\"\"<left>")
inoremap("'", "''<left>")
