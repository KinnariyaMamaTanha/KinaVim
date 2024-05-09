"======================================================================
" statusline
"======================================================================
"--- https://bruhtus.github.io/posts/vim-statusline/
"--- https://jdhao.github.io/2019/11/03/vim_custom_statusline/
" component for active window
function! StatuslineActive()
  " if we want to add `f` items in our statusline

let g:currentmode={
       \ 'n'  : 'NORMAL',
       \ 'v'  : 'VISUAL',
       \ 'V'  : 'V·Line',
       \ "\<C-V>" : 'V·Block',
       \ 'i'  : 'INSERT',
       \ 'R'  : 'R',
       \ 'Rv' : 'V·Replace',
       \ 'c'  : 'Command',
       \}

  "let l:current_mode = mode()
  let l:current_mode = ' ['.'%{toupper(g:currentmode[mode()])}'.'] '
  " if we want to add 'm' items in our statusline
  let l:cursor_position = ' Ln %l, Col %c'
  let l:indentation = ' %{(&expandtab=="1") ? "Spaces: ".&tabstop : "Tabs: ".&tabstop} '
  let l:encoding = ' %{&fenc} '
  let l:end_of_line_sequence = ' %{(&fileformat=="dos")? "CRLF" : "LF"} '
  let l:percent = ' %p%% '
  let l:language_mode = '%{&filetype}'
  " the `.` is basically to ignore whitespace before and put it right after the previous component
  let l:statusline_left = l:current_mode
  let l:statusline_middle = ''
  let l:statusline_right = l:cursor_position.l:indentation.l:encoding.l:end_of_line_sequence.l:percent.l:language_mode
  return l:statusline_left.'%='.l:statusline_middle.'%='.l:statusline_right
endfunction

" component for inactive window
function! StatuslineInactive()
  " the component goes here
endfunction

" load statusline using `autocmd` event with this function
function! StatuslineLoad(mode)
  if a:mode ==# 'active'
    " to make it simple, %! is to evaluate the current changes in the window
    " it can be useful for evaluate current mode in statusline. For more info:
    " :help statusline.
    setlocal statusline=%!StatuslineActive()
  else
    setlocal statusline=%!StatuslineInactive()
  endif
endfunction

" so that autocmd didn't stack up and slow down vim
augroup statusline_startup
  autocmd!
  " for more info :help WinEnter and :help BufWinEnter
  autocmd WinEnter,BufWinEnter * call StatuslineLoad('active')
  autocmd WinLeave * call StatuslineLoad('inactive')
augroup END

hi StatusLine ctermbg=32 ctermfg=254 guibg=#007acc guifg=#dfe9ed
"hi StatusLineNC ctermbg=240 ctermfg=240 guibg=#d0d0d0 guifg=#444444

hi StatusLineTerm ctermbg=32 ctermfg=254 guibg=#007acc guifg=#dfe9ed
"hi StatusLineTermNC ctermbg=252 ctermfg=240 guibg=#d0d0d0 guifg=#444444
"-- #007acc
"-- #dfe9ed

"--- color theme
"set background=dark
"try
"    set t_Co=256
"    set t_ut=
"    colorscheme codedark
     "colorscheme molokai
"catch
"    try
"        colorscheme desert
"    catch
"        colorscheme peaksea
"    endtry
"endtry

