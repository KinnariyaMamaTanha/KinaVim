
" =====================
" ==== Normal Mode ====
" =====================

" this setting only works in this file, not the global-settings.vim file, I don't know why.
set timeoutlen=200

" better move to the start and end of the line
nnoremap H ^
nnoremap L $
nnoremap Y 0

" These lines fix some Alt key problems for me
let c = 'a'
while c <= 'z'
    exec "set <A-".c.">=\e".c
    exec "imap \e".c." <A-".c.">"
    let c = nr2char(1+char2nr(c))
endw

nnoremap <A-h> g^
nnoremap <A-j> gj
nnoremap <A-k> gk
nnoremap <A-l> g$
nnoremap <A-y> g0

" source the config inside vim
map <leader>r :source ~/.vim/vimrc<CR>

" quick move between lines
noremap <C-j> 7j
noremap <C-k> 7k
" quick move to the top and bottom
noremap T H
noremap B L

" split windows
nnoremap sh :set splitright<CR>:vsplit<CR>
nnoremap sl :set nosplitright<CR>:vsplit<CR>
nnoremap sj :set splitbelow<CR>:split<CR>
nnoremap sk :set nosplitbelow<CR>:split<CR>
" move between windows
nnoremap <LEADER>j <C-w>j
nnoremap <LEADER>k <C-w>k
nnoremap <LEADER>h <C-w>h
nnoremap <LEADER>l <C-w>l
" resize windows
nnoremap <up> :res +1<CR>
nnoremap <down> :res -1<CR>
nnoremap <left> :vertical resize +1<CR>
nnoremap <right> :vertical resize -1<CR>

" move between tablines
if !has('nvim')
    nnoremap <leader>1 <Plug>AirlineSelectTab1
    nnoremap <leader>2 <Plug>AirlineSelectTab2
    nnoremap <leader>3 <Plug>AirlineSelectTab3
    nnoremap <leader>4 <Plug>AirlineSelectTab4
    nnoremap <leader>5 <Plug>AirlineSelectTab5
    nnoremap <leader>6 <Plug>AirlineSelectTab6
    nnoremap <leader>7 <Plug>AirlineSelectTab7
    nnoremap <leader>8 <Plug>AirlineSelectTab8
    nnoremap <leader>9 <Plug>AirlineSelectTab9
    nnoremap [t <Plug>AirlineSelectPrevTab
    nnoremap ]t <Plug>AirlineSelectNextTab
endif

" save and quit
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>

" ban s key
nnoremap s <nop>

" choose all
nnoremap <C-a> ggVG

" Go Home
nnoremap <silent> <Home> :Startify<CR>

" no highlight search
nnoremap <LEADER><CR> :nohlsearch<CR>


" =====================
" ==== Insert Mode ====
" =====================

" quicker <ESC>
inoremap JK <Esc>
inoremap <C-s> <ESC>:w<CR>a

" Better Chinese bracket
inoremap 《 《》<LEFT>
inoremap （ （）<LEFT>
inoremap 【 【】<LEFT>
inoremap “ “”<LEFT>
inoremap ‘ ‘’<LEFT>

" =====================
" ==== Visual Mode ====
" =====================

vnoremap JK <Esc>
noremap VV <C-q>
xnoremap <  <gv
xnoremap >  >gv
vnoremap H ^
vnoremap L $
vnoremap Y 0

" WSL2 yank support, according to https://www.reddit.com/r/bashonubuntuonwindows/comments/be2q3l/comment/el2vx7u/?utm_source=share&utm_medium=web2x
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
augroup WSLYank
    autocmd!
    autocmd TextYankPost * if v:event.operator ==# 'y' | call system('cat |' . s:clip, @0) | endif
augroup END

" ======================
" ==== command mode ====
" ======================
cnoremap <C-h> <Home>
cnoremap <C-l> <End>
cnoremap <C-b> <S-Left>
cnoremap <C-e> <S-Right>


" ========================
" ==== plugin keymaps ====
" ========================
"
" see in corresponding config files
