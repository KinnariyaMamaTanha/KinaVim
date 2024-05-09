
" =====================
" ==== Normal Mode ====
" =====================

" this setting only works in this file, not the global-settings.vim file, I don't know why.
set timeoutlen=200

" better move to the start and end of the line
nmap H g^
nmap L g$
nmap Y g0

" source the config inside vim
map <leader>r :source ~/.vim/vimrc<CR>

" quick move between lines
noremap <C-j> 7j
noremap <C-k> 7k
" quick move to the top and bottom
noremap T H
noremap B L

" split windows
map sh :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>
" move between windows
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>l <C-w>l
" resize windows
map <up> :res +1<CR>
map <down> :res -1<CR>
map <left> :vertical resize +1<CR>
map <right> :vertical resize -1<CR>

" open new tabline
map <C-t> :tabe<CR>
" move between tablines
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap [t <Plug>AirlineSelectPrevTab
nmap ]t <Plug>AirlineSelectNextTab

" save and quit
map <C-s> :w<CR>
map <C-q> :q<CR>

" ban s key
noremap s <nop>

" =====================
" ==== Insert Mode ====
" =====================

" quicker <ESC>
inoremap JK <Esc>

" =====================
" ==== Visual Mode ====
" =====================

vmap JK <Esc>
noremap VV <C-q>
xnoremap <  <gv
xnoremap >  >gv

" =======================
" ==== other keymaps ====
" =======================

" use system clipboard in wsl2, performe badly
vmap <C-c> :w !clip.exe<CR><CR>

" move the current line up or down
noremap <M-up> :<c-u>execute 'move -1-'. v:count1<cr>
noremap <M-down> :<c-u>execute 'move +'. v:count1<cr>

" Go Home
noremap <silent> <leader>gh :Startify<CR>

" no highlight search
noremap <LEADER><CR> :nohlsearch<CR>

" semantic highlight
nnoremap <leader>s :SemanticHighlightToggle<CR>

" ========================
" ==== plugin keymaps ====
" ========================
"
" see in corresponding config files
