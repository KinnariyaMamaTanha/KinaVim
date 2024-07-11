lua << EOF
require("workspaces").setup({
    -- TODO: Change the path to your path!!! Like `/home/Username/.vim/workspaces`
    path = '/home/kinnariya/.vim/workspaces',
    hooks = {
        open = "Telescope find_files",
    }
})
EOF

nmap <silent> wk :Telescope workspaces<CR>
