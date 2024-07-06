lua << EOF
require("dapui").setup({

})

-- require("nvim-dap").setup({
--
-- })
require("dap-python").setup("python")
EOF

nmap <F6> :lua require("dapui").toggle()<CR>
imap <F6> :lua require("dapui").toggle()<CR>
nmap <C-b> :lua require'dap'.toggle_breakpoint()<CR>
imap <C-b> :lua require'dap'.toggle_breakpoint()<CR>
vnoremap <C-e> :lua require("dapui").eval()<CR>
