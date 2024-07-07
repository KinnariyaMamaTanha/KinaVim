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

nmap UD :Telescope undo<CR>
