" auto install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"============================= Plugins =========================
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-plug' " vim-plug
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " LSP client
Plug 'honza/vim-snippets', { 'on': [] } " code snippets，dependence of coc-snippets
Plug 'dhruvasagar/vim-table-mode', {'for': ['markdown'], 'on': 'TableModeToggle'}
Plug 'mzlogin/vim-markdown-toc', {'for': ['markdown'], 'on': ['GenTocGFM', 'GenTocRedcarpet', 'RemoveToc']}
Plug 'sheerun/vim-polyglot' " collections of highlight plugins
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " zen mode
Plug 'junegunn/limelight.vim', { 'on': 'Goyo' } " better zen mode
Plug 'joshdick/onedark.vim' " the second night theme
Plug 'KinnariyaMamaTanha/vim-startify', { 'branch': 'center' } " start menu
Plug 'Yggdroot/indentLine' " indent line
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' } " search
Plug 'luochen1990/rainbow' " highlight brackets
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' } " better undo
Plug 'scrooloose/nerdcommenter' " faster (un)comment
Plug 'liuchengxu/vista.vim' " tag list
Plug 'voldikss/vim-floaterm', { 'on': 'FloatermNew' } " floating terminal
Plug 'vim-airline/vim-airline', { 'on': [] } " beautiful statusline
Plug 'ryanoasis/vim-devicons', { 'on': [] } " icons for statusline
Plug 'rhysd/clever-f.vim' " cleverer f key
Plug 'Asheq/close-buffers.vim', {'on': 'Bdelete'}, " close hidden buffers
Plug 'matze/vim-move' " move lines, characters up, down, left, right more quickly
Plug 'tpope/vim-surround' " change surround brackets and so on
Plug 'tpope/vim-repeat' " coordination with vim-surround
Plug 'voldikss/vim-translator' " translator for words and paragraphs
Plug 'gcmt/wildfire.vim'
Plug 'wakatime/vim-wakatime' " awake time
Plug 'kkvh/vim-docker-tools'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'hotoo/pangu.vim', { 'for': ['markdown', 'text']}
Plug 'rhysd/accelerated-jk'
Plug 'lfv89/vim-interestingwords' " highlight current word under cursor
Plug 'haya14busa/incsearch.vim' " dependence of incsearch-fuzzy.vim
Plug 'haya14busa/incsearch-fuzzy.vim'


" markdown plugin, replaced by coc-markdown-preview-enhanced
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install', 'for': ['markdown'], 'on': 'MarkdownPreview'}  markdown preview
" copilot
" Plug 'github/copilot.vim', { 'for': ['cpp', 'c', 'python', 'sh', 'zsh']}
" unused colorschemes
" Plug 'yorickpeterse/vim-paper', {'on': 'colorscheme'}  like the paper
" Plug 'tomasiser/vim-code-dark', {'on': 'colorscheme'}  vscode like theme
" Plug 'ghifarit53/tokyonight-vim'
" Plug 'drewtempelmeyer/palenight.vim', {'on': 'colorscheme'}  the first night theme
" Plug 'jaxbot/semantic-highlight.vim', {'on': ['SemanticHighlight', 'SemanticHighlightToggle']} semantic highlight, interesting

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" auto load some plugin when entering insert mode
augroup InsertEnter_auto_load
  autocmd!
  autocmd InsertEnter * call plug#load('vim-snippets')
  autocmd InsertEnter * call plug#load('vim-airline')
  autocmd InsertEnter * call plug#load('vim-devicons')
  autocmd InsertEnter * AirlineRefresh | autocmd! InsertEnter_auto_load
augroup END
