" set to 1, the nvim will auto close current preview window when changing
" from Markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 0

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" combine preview window
" default: 0
" if enable it will reuse previous opened preview window when you preview markdown file.
" ensure to set let g:mkdp_auto_close = 0 if you have enable this option
let g:mkdp_combine_preview = 1

" auto refetch combine preview contents when change markdown buffer
" only when g:mkdp_combine_preview is 1
let g:mkdp_combine_preview_auto_refresh = 1

nmap <C-m><C-k> :MarkdownPreview<CR>
