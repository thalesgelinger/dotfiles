
vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>")
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>f", "<cmd>Prettier<CR>")
vim.keymap.set("n", "<C-q>", "<cmd>q<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("n", '<leader>c', vim.lsp.buf.code_action)
vim.keymap.set("n", '<leader>f', function() vim.lsp.buf.format { async = true } end)

local builtin = require('telescope.builtin')
vim.keymap.set("n", '<leader>ff', builtin.find_files, {})
vim.keymap.set("n", '<leader>fg', builtin.live_grep, {})
vim.keymap.set("n", '<leader>fw', builtin.grep_string, {})
vim.keymap.set("n", '<leader>fb', builtin.buffers, {})
vim.keymap.set("n", '<leader>fh', builtin.help_tags, {})
 -- vim.fn.expand("<cword>")



local hmark = require("harpoon.mark")
local hui = require("harpoon.ui")
vim.keymap.set("n", '<leader>m', hmark.add_file)
vim.keymap.set("n", '<leader>h', hui.toggle_quick_menu)
vim.keymap.set('n', '<C-j>', hui.nav_next)
vim.keymap.set('n', '<C-k>', hui.nav_prev)
-- NeoRunner
vim.keymap.set("n", '<leader>r', "<cmd>NeoRunner<CR>")

vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "{", "{}<left>")
vim.keymap.set("i", "{<CR>", "{<CR>}<ESC>0")
vim.keymap.set("i", "{;<CR>", "{<CR>};<ESC>0")
vim.keymap.set("i", "\"", "\"\"<left>")
vim.keymap.set("i", "'", "''<left>")

vim.keymap.set("n", '<leader>/', '<cmd>CommentToggle<CR>')
vim.keymap.set("v", '<leader>/', '<cmd>CommentToggle<CR>')

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


--Dummy
vim.keymap.set("i", "<C-c>", "<Esc>")

--rename highlighted text
vim.keymap.set("v", "<C-r>", '"hy:%s/<C-r>h//gc<left><left><left>')


vim.keymap.set("n", "<leader>gs", "<cmd>Git<CR>")
vim.keymap.set("n", "<leader>gp", "<cmd>Git push<CR>")

--Diagnostics
vim.keymap.set('n', '<leader>do', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>')
