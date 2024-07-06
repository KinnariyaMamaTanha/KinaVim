lua << EOF
require('render-markdown').setup({})
EOF
nmap <C-m><C-k> :RenderMarkdownToggle<CR>
