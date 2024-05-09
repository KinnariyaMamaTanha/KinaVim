let g:undotree_WindowLayout = 3
let g:undotree_ShortIndicators = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_UndoDir = '~/.vim/undo'
" persistent undo
if has("persistent_undo")
   let target_path = expand('~/.vim/undo')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

noremap UD :UndotreeToggle<CR>

