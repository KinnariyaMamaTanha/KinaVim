nnoremap <silent><leader>1 <cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <cmd>BufferLineGoToBuffer 9<CR>
nnoremap <silent><leader>$ <cmd>BufferLineGoToBuffer -1<CR>
nnoremap <silent>QO        <cmd>BufferLineCloseOthers<CR>
nnoremap <silent>QH        <cmd>BufferLineCloseLeft<CR>
nnoremap <silent>QL        <cmd>BufferLineCloseRight<CR>
nnoremap <silent><leader>[ <cmd>BufferLineCyclePrev<CR>
nnoremap <silent><leader>] <cmd>BufferLineCycleNext<CR>
command! Pin BufferLineTogglePin

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
        -- diagnostics_indicator = function(count, level, diagnostics_dict, context)
        --     local s = " "
        --     for e, n in pairs(diagnostics_dict) do
        --         local sym = e == "error" and " "
        --         or (e == "warning" and " " or "" )
        --         s = s .. n .. sym
        --     end
        --     return s
        -- end,

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
