lua << EOF
require("nvim-autopairs").setup {}
EOF
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() :
    \ "\<CMD>call feedkeys(v:lua.require('nvim-autopairs').autopairs_cr(), 'in')\<CR>"
