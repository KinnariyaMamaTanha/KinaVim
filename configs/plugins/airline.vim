
" powerline format
let g:airline_powerline_fonts = 1

" Override certain file names
let g:airline_filetype_overrides = {
            \ 'vista': ['Tags','']
            \ }

" enable the winbar tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" integrate coc-symbol-line, coc-git
let g:airline_section_b = '%{%get(g:,"coc_git_status","")%}'
let g:airline_section_c = '%{%get(b:, "coc_symbol_line_plain", "")%}'
