
let mapleader = ' ' " the leader key

" line number settings
set relativenumber " show relative line number
set number " show line number

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
set sidescrolloff=4 " number of columns to keep left or right the cursor
set cursorline " show the current cursor line
let &t_SI = "\<Esc>[6 q" " cursor formats, suitable for Windows Terminal
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

set nocompatible " turn off keyboard settings for vi
set hidden " hide buffers
set showmatch " show paired brackets
set ruler " turn on statusline
set clipboard^=unnamed " clipboard
set autochdir " change the cwd when entering a new file
set list " show the trailing whitespaces
set mouse=a " allow using mouse
set tw=0
set shortmess+=c " shorter completion messages, for coc.nvim
let &t_ut='' " Prevent incorrect backgroung rendering

" no swap files and (write) backup files
set noswapfile
set nobackup
set nowritebackup

" UI settings
set background=dark " dark mode
set termguicolors " Enable 24-RGB color
set guifont=MesloLGS\ Nerd\ Font\ Mono:h13
set encoding=utf-8 " character encoding method
set t_Co=256
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
augroup Insertenterleave
  autocmd!
  autocmd insertleave,winenter * set cursorline | set relativenumber | autocmd! Insertenterleave
  autocmd insertenter,winleave * set nocursorline | set norelativenumber | autocmd! Insertenterleave
  " autocmd insertleave,winenter * set relativenumber
  " autocmd insertenter,winleave * set norelativenumber
augroup END

syntax enable " syntax highlight enable
syntax on

" close all the windows when leaving the last buffer
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif
