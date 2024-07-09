lua << EOF
require("todo-comments").setup({})
EOF

nmap <silent> TD :TodoTelescope<CR>
