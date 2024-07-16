lua << EOF
require('onedark').setup {
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },
    lualine = {
        transparent = false,
    },
}
vim.cmd[[ colorscheme onedark ]]
EOF
