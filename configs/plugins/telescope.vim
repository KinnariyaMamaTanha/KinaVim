lua << EOF
require('telescope').setup{
    defaults = {
        history = {
            -- TODO: Change the path to your path!!! Like `/home/Username/.vim/telescope_history`
            path = "/home/kinnariya/.vim/telescope_history"
        }
    }
}
EOF
nnoremap <leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>c <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>m <cmd>lua require('telescope.builtin').oldfiles()<cr>
nnoremap <leader>t <cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>
nnoremap <leader>cl <cmd>lua require('telescope.builtin').colorscheme()<cr>
nnoremap <leader>q <cmd>lua require('telescope.builtin').quickfix()<cr>
nnoremap <leader>r <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap <leader>d <cmd>lua require('telescope.builtin').diagnostics()<cr>
nnoremap <leader>gc <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap <leader>gb <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>gs <cmd>lua require('telescope.builtin').git_status()<cr>
