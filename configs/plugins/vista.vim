noremap <C-M-right> :Vista!!<CR>
noremap <F4> :Vista!!<CR>

let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" default: ctags
let g:vista_executive_for = {
  \ 'cpp': 'coc',
  \ 'py': 'coc',
  \ 'json': 'coc',
  \ 'tex': 'coc',
  \ }
let g:vista_cursor_delay = 200
let g:vista_echo_cursor_strategy = "floating_win"
let g:vista_update_on_text_changed = 1
let g:vista_update_on_text_changed_delay = 200
let g:vista_blink = [0, 0]
let g:vista#renderer#ctags = 'line'
