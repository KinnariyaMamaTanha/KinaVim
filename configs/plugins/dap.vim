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

local dap = require('dap')
dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = '/home/kinnariya/.local/share/nvim/mason/bin/codelldb',
    args = {"--port", "${port}"},

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}
dap.configurations.c = dap.configurations.cpp

EOF
