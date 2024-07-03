
" install coc extensions automatically when missing
let g:coc_global_extensions = [
    \ 'coc-sh',
    \ 'coc-json',
    \ 'coc-vimlsp',
    \ 'coc-pyright',
    \ 'coc-clangd',
    \ 'coc-markdownlint',
    \ 'coc-git',
    \ 'coc-explorer',
    \ 'coc-pairs',
    \ 'coc-floaterm',
    \ 'coc-snippets',
    \ 'coc-word',
    \ 'coc-yank',
    \ 'coc-pydocstring',
    \ 'coc-cmake',
    \ 'coc-docker',
    \ 'coc-ecdict',
    \ 'coc-webview',
    \ 'coc-markdown-preview-enhanced',
    \ 'coc-html',
    \ ]

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use `[d` and `]d` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
" Remap keys for applying code actions at the cursor position
nmap <silent> sa <Plug>(coc-codeaction-source)
nmap <silent> cl <Plug>(coc-codeaction-line)
xmap <silent> ca <Plug>(coc-codeaction-selected)
nmap <silent> ca <Plug>(coc-codeaction)
nmap <silent> qf <Plug>(coc-fix-current)

" ======================
" ==== coc-explorer ====
" ======================
noremap <leader>e :CocCommand explorer<CR>
noremap <F2> :CocCommand explorer<CR>

" ========================
" ==== rename symbols ====
" ========================
nmap rn <Plug>(coc-rename)

" ==================
" ==== refactor ====
" ==================
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" ==================
" ==== coc-yank ====
" ==================
" show yank list
nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<CR>
" clean yank history
nnoremap <silent> <leader>yc :CocCommand yank.clean<CR>

" =================
" ==== coc-git ====
" =================
" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" navigate chunks of conflicts
nmap [c <Plug>(coc-git-prevconflict)
nmap ]c <Plug>(coc-git-nextconflict)
" show chunk diff at current position
nmap df <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap cm <Plug>(coc-git-commit)
" show git status with coc-list
nnoremap <silent> gs  :<C-u>CocList --normal gstatus<CR>

" ===================
" ==== coc-pairs ====
" ===================
autocmd FileType markdown let b:coc_pairs = [["$", "$"]]

" =======================================
" ==== coc-markdown-preview-enhanced ====
" =======================================
nmap <C-m><C-k> CocCommand markdown-preview-enhanced.openPreview<CR>
