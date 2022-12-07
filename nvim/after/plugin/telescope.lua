require('telescope').setup {
    defaults = {
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
        prompt_prefix = "> ",
        selection_caret = "> ",
        layout_strategy = "vertical",
    },
    find_files = {
      theme = "dropdown"
    }
}
