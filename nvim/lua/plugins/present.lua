return {
    'Chaitanyabsprip/present.nvim',
    config = function()
        require('present').setup {
            default_mappings = true,
            kitty = {
                normal_font_size = 12,
                zoom_font_size = 28,
            },
        }
    end
}
