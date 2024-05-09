let g:Lf_WindowPosition = 'popup'
let g:Lf_StlColorscheme = 'onedark'
let g:Lf_PopupColorscheme = 'onedark'
let g:Lf_DefaultMode = 'Regex'
let g:Lf_CursorBlink = 0
let g:Lf_WildIgnore = {
        \ 'dir': ['.git', '.vscode', '.svn', '.hg', '.vscode'],
        \ 'file': ['.gitignore', 'LISENCE', '*.exe', '*.o', '*.so']
        \}
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_PreviewCode = 1
let g:Lf_PreviewScrollStepSize = 5
let g:Lf_PopupShowBorder = 0
let g:Lf_EnableCircularScroll = 1
let g:Lf_MruFileExclude = ['*.so', '*.o', '.gitignore', '*.exe', '*.txt']
let g:Lf_CommandMap = {'<ESC>': ['<C-Q>', '<ESC>'], '<C-Up>': ['<C-M-Up>'], '<C-Down>': ['<C-M-Down>']}
let g:Lf_ShortcutF = "<leader>f"
noremap <leader>b :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>m :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>t :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>c :Leaderf rg <CR>
noremap <leader>g :Leaderf git <CR>
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
