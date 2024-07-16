set signcolumn=yes
" Use the same coc-setting.json file for both vim and neovim
let g:coc_config_home = '~/.vim'
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
    \ 'coc-snippets',
    \ 'coc-word',
    \ 'coc-yank',
    \ 'coc-pydocstring',
    \ 'coc-docker',
    \ 'coc-ecdict',
    \ 'coc-webview',
    \ 'coc-markdown-preview-enhanced',
    \ 'coc-html',
    \ 'coc-texlab',
    \ ]

if !has('nvim')
    let g:coc_global_extensions += [ 'coc-todo-tree', 'coc-floaterm', 'coc-pairs' ]
    " =======================
    " ==== coc-todo-tree ====
    " =======================
    nmap TD :CocCommand coc-todo-tree.showTree<CR>
endif

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <C-TAB>
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
nnoremap <silent> [d <Plug>(coc-diagnostic-prev)
nnoremap <silent> ]d <Plug>(coc-diagnostic-next)

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation
nnoremap <silent><nowait> gd :call CocAction('jumpDefinition',     v:false)<CR>
nnoremap <silent><nowait> gy :call CocAction('jumpTypeDefinition', v:false)<CR>
nnoremap <silent><nowait> gi :call CocAction('jumpImplementation', v:false)<CR>
nnoremap <silent><nowait> gr :call CocAction('jumpReferences',     v:false)<CR>

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
nnoremap <silent> sa <Plug>(coc-codeaction-source)
nnoremap <silent> cl <Plug>(coc-codeaction-line)
xnoremap <silent> ca <Plug>(coc-codeaction-selected)
nnoremap <silent> ca <Plug>(coc-codeaction)
nnoremap <silent> qf <Plug>(coc-fix-current)

" Neovim-only settings
if has('nvim')
    " Focus floating windows
    nmap <silent> <A-f> <Plug>(coc-float-jump)
endif

" Manually kill coc PID if failed
autocmd VimLeavePre * if get(g:, 'coc_process_pid', 0)
	\ | call system('kill -9 '.g:coc_process_pid) | endif

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
nnoremap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xnoremap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nnoremap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" ==================
" === inlayhint ====
" ==================

nnoremap <silent> <leader>i :CocCommand document.toggleInlayHint<CR>


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
nnoremap [g <Plug>(coc-git-prevchunk)
nnoremap ]g <Plug>(coc-git-nextchunk)
" navigate chunks of conflicts
nnoremap [c <Plug>(coc-git-prevconflict)
nnoremap ]c <Plug>(coc-git-nextconflict)
" show chunk diff at current position
nnoremap df <Plug>(coc-git-chunkinfo)
" show commit contains current position
nnoremap cm <Plug>(coc-git-commit)
" show git status with coc-list
nnoremap <silent> gs  :<C-u>CocList --normal gstatus<CR>

" =======================================
" ==== coc-markdown-preview-enhanced ====
" =======================================
nnoremap <C-m><C-k> CocCommand markdown-preview-enhanced.openPreview<CR>

" ====================
" ==== coc-texlab ====
" ====================
nnoremap <leader>fs :CocCommand latex.ForwardSearch<CR>

" ==========================
" ==== multiple cursors ====
" ==========================
nnoremap <silent> <C-c> <Plug>(coc-cursors-word)
