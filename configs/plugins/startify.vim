let g:startify_files_number = 6
let g:footer = [
            \ '   *------------------------------------------------------------------------*',
            \ '   |     Do you want some bugs today, sir? --- From KinnariyaMamaTanha      |',
            \ '   *------------------------------------------------------------------------*'
            \ ]
let g:startify_custom_footer =
            \ 'startify#center(g:footer)'
let g:ascii = [
            \'                                                      ',
            \'                                                      ',
            \'  ██╗  ██╗██╗███╗   ██╗ █████╗ ██╗   ██╗██╗███╗   ███╗',
            \'  ██║ ██╔╝██║████╗  ██║██╔══██╗██║   ██║██║████╗ ████║',
            \'  █████╔╝ ██║██╔██╗ ██║███████║██║   ██║██║██╔████╔██║',
            \'  ██╔═██╗ ██║██║╚██╗██║██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║',
            \'  ██║  ██╗██║██║ ╚████║██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║',
            \'  ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
            \'                                                      ',]
let g:startify_custom_header =
          \ startify#center(g:ascii + startify#fortune#boxed())
let g:startify_center = 50
let g:startify_change_to_vcs_root = 1
let g:startify_commands = [
            \ {'f': ["Find Files", "LeaderfFile"]},
            \ {'P': ['Projects', ':ProjectList']},
            \ {'t': ['TODOs', ':ToDo']},
            \ {'c': ['Configuration', ':e ~/.vim/vimrc']},
            \ {'p': ['Plugins', ':e ~/.vim/configs/core/plugins.vim']},
            \ ]

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
        \ { 'header': [' Commands'],                   'type': 'commands' },
        \ { 'header': [' Sessions'],                   'type': 'sessions' },
        \ { 'header': [' Recent Files in '. getcwd()], 'type': 'dir' },
        \ { 'header': [' Global Recent Files'],        'type': 'files' },
        \ { 'header': [' Git Modified'],               'type': function('s:gitModified')},
        \ { 'header': [' Git Untracked'],              'type': function('s:gitUntracked')},
        \ ]
