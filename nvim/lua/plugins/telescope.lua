return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup {
            defaults = {
                file_previewer = require 'telescope.previewers'.vim_buffer_cat.new,
                grep_previewer = require 'telescope.previewers'.vim_buffer_vimgrep.new,
                qflist_previewer = require 'telescope.previewers'.vim_buffer_qflist.new,
                prompt_prefix = "> ",
                selection_caret = "> ",
                layout_strategy = "vertical",
            },
            find_files = {
                theme = "dropdown"
            }

        }

        local builtin = require('telescope.builtin')
        vim.keymap.set("n", '<leader>ff', builtin.find_files, {})
        vim.keymap.set("n", '<leader>fg', builtin.live_grep, {})
        vim.keymap.set("n", '<leader>fw', builtin.grep_string, {})
        vim.keymap.set("n", '<leader>fb', builtin.buffers, {})
        vim.keymap.set("n", '<leader>fh', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>')
        -- vim.fn.expand("<cword>")
    end
}
