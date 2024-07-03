
" run codes for cpp, c, python, sh
noremap <F5> :call RunCode()<CR>
func! RunCode()
    exec "w"
    if &filetype == 'c'
        silent !gcc % -g -o %<
        redraw!
        FloatermNew --autoclose=0 ./%<
    elseif &filetype == 'cpp'
        silent !g++ % -g -o %<
        redraw!
        FloatermNew --autoclose=0 ./%<
    elseif &filetype == 'python'
        FloatermNew --autoclose=0 python %
    elseif &filetype == 'markdown'
        CocCommand markdown-preview-enhanced.openPreview
    elseif &filetype == 'sh'
        FloatermNew --autoclose=0 bash %
    endif
endfunc

" interactively run codes, using python
noremap <S-F5> :call Interactive()<CR>
func! Interactive()
    exec "w"
    if &filetype == 'python'
        FloatermNew --autoclose=1 --wintype=vsplit --position=right --width=0.5 ipython -i %
    else
        FloatermNew --autoclose=1 --wintype=vsplit --position=right --width=0.5 ipython
    endif
endfunction

" Make
command! Make silent !make | redraw! | cwindow
