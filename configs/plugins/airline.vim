" move between tablines
nnoremap <leader>1 <Plug>AirlineSelectTab1
nnoremap <leader>2 <Plug>AirlineSelectTab2
nnoremap <leader>3 <Plug>AirlineSelectTab3
nnoremap <leader>4 <Plug>AirlineSelectTab4
nnoremap <leader>5 <Plug>AirlineSelectTab5
nnoremap <leader>6 <Plug>AirlineSelectTab6
nnoremap <leader>7 <Plug>AirlineSelectTab7
nnoremap <leader>8 <Plug>AirlineSelectTab8
nnoremap <leader>9 <Plug>AirlineSelectTab9
nnoremap [t <Plug>AirlineSelectPrevTab
nnoremap ]t <Plug>AirlineSelectNextTab

" powerline format
let g:airline_powerline_fonts = 1

" Override certain file names
let g:airline_filetype_overrides = {
            \ 'vista_kind': ['Tags','']
            \ }

" enable the winbar tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" integrate coc-git
let g:airline_section_b = '%{%get(g:,"coc_git_status","")%}'
let g:airline_section_c = ''
