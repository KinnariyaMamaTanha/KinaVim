nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
nnoremap <silent><leader>$ <Cmd>BufferLineGoToBuffer -1<CR>

lua << EOF
require('bufferline').setup {
    options = {
        separator_style='slant',

        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },

        diagnostics = "coc",

        --- count is an integer representing total count of errors
        --- level is a string "error" | "warning"
        --- diagnostics_dict is a dictionary from error level ("error", "warning" or "info")to number of errors for each level.
        --- this should return a string
        --- Don't get too fancy as this function will be executed a lot
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
                local sym = e == "error" and " "
                or (e == "warning" and " " or "" )
                s = s .. n .. sym
            end
            return s
        end,

        offsets = {
            {
                filetype = "coc-explorer",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left"
            },
            {
                filetype = "Outline",
                text = "Outline",
                highlight = "Directory",
                text_align = "right"
            },
            {
                filetype = "undotree",
                text = "Undo Tree",
                highlight = "Directory",
                text_align = "right"
            },
            {
                filetype = "coctree",
                text = "ToDo Tree",
                highlight = "Directory",
                text_align = "right"
            },
        },

        numbers = 'ordinal'
    }
}
EOF
