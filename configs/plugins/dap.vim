lua << EOF
vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set({ 'n', 'i' }, '<C-b>', function() require('dap').toggle_breakpoint() end)
vim.keymap.set({ 'n', 'i' }, '<F6>', function() require('dapui').toggle() end)
vim.keymap.set('n', '<F9>', function() require('dap').continue() end)
vim.keymap.set('n', '<C-e>', function() require('dapui').eval() end)

require("dapui").setup({

})

-- require("nvim-dap").setup({
--
-- })
require("dap-python").setup("python")
EOF
