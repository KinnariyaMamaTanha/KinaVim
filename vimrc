" Neovim config file position should be at ~/.config/nvim/init.vim

" Special need for polyglot
if !has('nvim')
    source ~/.vim/configs/plugins/polyglot.vim
endif

" =============
" core settings
" =============
source ~/.vim/configs/core/global-settings.vim
source ~/.vim/configs/core/key-maps.vim
source ~/.vim/configs/core/plugins.vim
source ~/.vim/configs/core/colorscheme.vim
if !has('nvim')
    source ~/.vim/configs/core/run-codes.vim
endif

" ===============
" plugin settings
" ===============
source ~/.vim/configs/plugins/coc.vim
source ~/.vim/configs/plugins/clever-f.vim
source ~/.vim/configs/plugins/close-buffers.vim
source ~/.vim/configs/plugins/dockertools.vim
source ~/.vim/configs/plugins/pangu.vim
source ~/.vim/configs/plugins/vimtex.vim
source ~/.vim/configs/plugins/notes.vim
source ~/.vim/configs/plugins/translator.vim


if has('nvim')
    source ~/.vim/configs/plugins/dashboard.vim
    source ~/.vim/configs/plugins/treesitter.vim
    source ~/.vim/configs/plugins/lualine.vim
    source ~/.vim/configs/plugins/zenmode.vim
    source ~/.vim/configs/plugins/outline.vim
    source ~/.vim/configs/plugins/project.nvim.vim
    source ~/.vim/configs/plugins/telescope.vim
    source ~/.vim/configs/plugins/dropbar.vim
    source ~/.vim/configs/plugins/bufferline.vim
    source ~/.vim/configs/plugins/code-runner.vim
    source ~/.vim/configs/plugins/nvim-autopairs.vim
    source ~/.vim/configs/plugins/comment.vim
    source ~/.vim/configs/plugins/indent-blackline.vim
    source ~/.vim/configs/plugins/toggleterm.vim
    source ~/.vim/configs/plugins/move.nvim.vim
    source ~/.vim/configs/plugins/markdown.nvim.vim
    source ~/.vim/configs/plugins/bigfile.vim
    source ~/.vim/configs/plugins/wilder.vim
    source ~/.vim/configs/plugins/search.vim
    source ~/.vim/configs/plugins/telescope-undo.vim
    source ~/.vim/configs/plugins/dap.vim
    source ~/.vim/configs/plugins/mason.vim
    source ~/.vim/configs/plugins/conform.vim
    source ~/.vim/configs/plugins/data-viewer.vim
    source ~/.vim/configs/plugins/todo-comments.vim
    source ~/.vim/configs/plugins/copilot.lua.vim
else
    source ~/.vim/configs/plugins/undotree.vim
    source ~/.vim/configs/plugins/startify.vim
    source ~/.vim/configs/plugins/floaterm.vim
    source ~/.vim/configs/plugins/indentline.vim
    source ~/.vim/configs/plugins/nerdcommenter.vim
    source ~/.vim/configs/plugins/airline.vim
    source ~/.vim/configs/plugins/accelerated_jk.vim
    source ~/.vim/configs/plugins/goyo.vim
    source ~/.vim/configs/plugins/vista.vim
    source ~/.vim/configs/plugins/project.vim
    source ~/.vim/configs/plugins/leaderf.vim
    source ~/.vim/configs/plugins/move.vim
    source ~/.vim/configs/plugins/vim-markdown.vim
    source ~/.vim/configs/plugins/rainbow.vim
endif
