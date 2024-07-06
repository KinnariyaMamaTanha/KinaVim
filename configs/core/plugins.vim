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
Plug 'dhruvasagar/vim-table-mode', { 'for': ['markdown', 'vim-plug'], 'on': 'TableModeToggle' }
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' } " better undo
Plug 'rhysd/clever-f.vim' " cleverer f key
Plug 'Asheq/close-buffers.vim', { 'on': 'Bdelete' }, " close hidden buffers
Plug 'tpope/vim-repeat' " coordination with vim-surround
Plug 'gcmt/wildfire.vim'
Plug 'wakatime/vim-wakatime' " awake time
Plug 'kkvh/vim-docker-tools'
Plug 'hotoo/pangu.vim', { 'for': [ 'markdown', 'text', 'vim-plug' ] }
Plug 'lfv89/vim-interestingwords' " highlight current word under cursor
Plug 'lervag/vimtex'
Plug 'makerj/vim-pdf'
Plug 'mayanksuman/vim-notes-markdown', { 'on': ['ToDo', 'NoteSearch', 'NoteCreate', 'NoteFuzzySearch', 'NoteFolder', 'NS', 'NC', 'NFS', 'NF'] }
Plug 'voldikss/vim-translator' " translator for words and paragraphs

if has('nvim')
    Plug 'HiPhish/rainbow-delimiters.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'navarasu/onedark.nvim'
    Plug 'folke/tokyonight.nvim'
    Plug 'Mofiqul/vscode.nvim'
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'folke/twilight.nvim' " Together with zen-mode.nvim
    Plug 'folke/zen-mode.nvim', { 'on': 'ZenMode'}
    Plug 'hedyhli/outline.nvim', { 'on': 'Outline'} " Symbol outlines
    Plug 'ahmedkhalf/project.nvim', { 'on': [ 'Telescope' ] }
    Plug 'nvim-lua/plenary.nvim' " dependence of other plugins
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'Bekaboo/dropbar.nvim'
    Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
    Plug 'CRAG666/code_runner.nvim', { 'on': [ 'RunFile' ] }
    Plug 'windwp/nvim-autopairs'
    Plug 'numToStr/Comment.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
    Plug 'nvimdev/dashboard-nvim'
    Plug 'kylechui/nvim-surround'
    Plug 'fedepujol/move.nvim'
    Plug 'MeanderingProgrammer/markdown.nvim', { 'for': [ 'markdown', 'vim-plug' ] }
    Plug 'mfussenegger/nvim-dap'
    Plug 'nvim-neotest/nvim-nio'
    Plug 'rcarriga/nvim-dap-ui'
    Plug 'mfussenegger/nvim-dap-python'
else
    Plug 'KinnariyaMamaTanha/vim-startify', { 'branch': 'center' } " start menu
    Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' } " search
    Plug 'scrooloose/nerdcommenter' " faster (un)comment
    Plug 'liuchengxu/vista.vim' " tag list
    Plug 'luochen1990/rainbow' " highlight brackets
    Plug 'sheerun/vim-polyglot' " collections of highlight plugins
    Plug 'vim-airline/vim-airline', { 'on': [] } " beautiful statusline
    Plug 'ryanoasis/vim-devicons', { 'on': [] } " icons for statusline
    Plug 'joshdick/onedark.vim' " the second night theme
    Plug 'rhysd/accelerated-jk'
    Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " zen mode
    Plug 'junegunn/limelight.vim', { 'on': 'Goyo' } " better zen mode
    Plug 'lambdalisue/vim-nerdfont' " beautify vim-project
    Plug 'lambdalisue/glyph-palette.vim' " colorize vim-nerdfont
    Plug 'leafOfTree/vim-project', { 'on': [ 'ProjectList', 'Project', 'ProjectNew' ] } " Project manager
    Plug 'voldikss/vim-floaterm', { 'on': 'FloatermNew' } " floating terminal
    Plug 'Yggdroot/indentLine' " indent line
    Plug 'tpope/vim-fugitive' " In Neovim, replaced by toggleterm
    Plug 'tpope/vim-surround' " change surround brackets and so on
    Plug 'matze/vim-move' " move lines, characters up, down, left, right more quickly
    Plug 'preservim/vim-markdown', { 'for': [ 'markdown', 'vim-plug' ] }
endif

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

if !has('nvim')
" auto load some plugin when entering insert mode
augroup InsertEnter_auto_load
  autocmd!
  autocmd InsertEnter * call plug#load('vim-snippets')
  autocmd InsertEnter * call plug#load('vim-airline')
  autocmd InsertEnter * call plug#load('vim-devicons')
  autocmd InsertEnter * AirlineRefresh | autocmd! InsertEnter_auto_load
augroup END
endif
