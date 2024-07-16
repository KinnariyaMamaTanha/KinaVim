
let mapleader = ' ' " the leader key

" line number settings
set number
set relativenumber " show relative line number

" fold method settings
set foldmethod=indent " fold codes accroding to the indent
set foldlevelstart=99 " do not fold the codes by default

" turn on file type detection
filetype on
filetype plugin on
filetype indent on

" cursor settings
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif " remember the last position of cursor
set scrolloff=5 " number of lines to keep above or below the cursor
set sidescrolloff=4 " number of columns to keep right the cursor
set cursorline " show the current cursor line
set cursorcolumn " show the current cursor column
set whichwrap+=<,>,h,l " cross-line cursor move
let &t_SI = "\<Esc>[6 q" " cursor formats, suitable for Windows Terminal
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

set nocompatible " turn off keyboard settings for vi
set hidden " hide buffers
set showmatch " show paired brackets
set autochdir " change the cwd when entering a new file
set list " show the trailing whitespaces

" mouse settings
set mouse=a " allow using mouse
set mousemodel=popup_setpos

set shortmess+=c " shorter completion messages, for coc.nvim
let &t_ut='' " Prevent incorrect backgroung rendering
set autowrite " auto save
set autoread " auto read modified files
set confirm " confirm when working on read-only or not saved files

" no swap files and (write) backup files
set noswapfile
set nobackup
set nowritebackup

" UI settings
set background=dark " dark mode
set termguicolors " Enable 24-RGB color
set guifont=MesloLGS\ Nerd\ Font\ Mono:h13
set encoding=utf-8 " character encoding method
set t_Co=256 " 256 color support
set t_ut=

" indent settings
set smartindent " smart indent
set tabstop=4 " the equivalent whitespace number of a tab
set shiftwidth=4 " the length of (auto)indent
set softtabstop=4 " number of space shown while performing editing operations
set expandtab " replace tab with whitespaces

" Show command autocomplete
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu " show a navigable menu for tab completion
set wildmode=longest,list,full

" search settings
set hlsearch
set incsearch
set ignorecase " ignore case when searching, auto-complete
set smartcase " smarter case

syntax enable " syntax highlight enable
syntax on

" close all the windows when leaving the last buffer
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

" conceal level
set conceallevel=2

if has('nvim')
    set pumblend=20 " transparency for pop-up menu
endif

set virtualedit=block " virtual text setting
set backspace=2

" right click menu settings
" auvmenu PopUp.-1-
vnoremenu PopUp.CodeAction\ selected <Plug>(coc-codeaction-selected)
vnoremenu PopUp.Refactor <Plug>(coc-codeaction-refactor-selected)
vnoremenu PopUp.-2- :
vnoremenu PopUp.Translate :Pantran<CR>

if has('nvim')
    aunmenu PopUp.How-to\ disable\ mouse
endif
" aunmenu PopUp.-1-
nnoremenu PopUp.Definition <Plug>(coc-definition)
nnoremenu PopUp.Implementation <Plug>(coc-implementation)
nnoremenu PopUp.References <Plug>(coc-references)
nnoremenu PopUp.Type\ Definition <Plug>(coc-type-definition)
nnoremenu PopUp.Rename <Plug>(coc-rename)
nnoremenu PopUp.-2- :
nnoremenu PopUp.Open\ Fold  zO
nnoremenu PopUp.Close\ Fold zC
nnoremenu PopUp.-3- :
nnoremenu PopUp.Coc\ Fix <Plug>(coc-fix-current)
nnoremenu PopUp.CodeAction <Plug>(coc-codeaction)
nnoremenu PopUp.CodeAction\ Line <Plug>(coc-codeaction-line)
