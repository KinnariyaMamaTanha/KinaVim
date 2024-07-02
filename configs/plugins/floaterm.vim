
let g:floaterm_width = 0.7
let g:floaterm_height = 0.7
let g:floaterm_opener = "edit"
let g:floaterm_rootmarkers = ['.project', '.git', '.hg', '.svn', '.root', '.vscode']

nmap <F3> :FloatermNew<CR>
nmap <C-left> :FloatermPrev<CR>
nmap <C-right> :FloatermNext<CR>

" yazi integration
command! Ya FloatermNew --width=0.8 --height=0.8 yazi

" lazygit integration
command! Lgit FloatermNew --width=0.9 --height=0.9 lazygit

" fzf integration
command! Fzf FloatermNew fzf
