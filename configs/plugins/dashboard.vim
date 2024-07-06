lua << EOF

local logo = [[
   ██╗  ██╗██╗███╗   ██╗ █████╗ ██╗   ██╗██╗███╗   ███╗
   ██║ ██╔╝██║████╗  ██║██╔══██╗██║   ██║██║████╗ ████║
   █████╔╝ ██║██╔██╗ ██║███████║██║   ██║██║██╔████╔██║
   ██╔═██╗ ██║██║╚██╗██║██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║
   ██║  ██╗██║██║ ╚████║██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║
   ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
]]

logo = string.rep("\n", 8) .. logo .. "\n\n"

local opts = {
    theme = "doom",
    hide = {
        statusline = true,
        tabline = true,
        winbar = true,
    },
    config = {
        header = vim.split(logo, "\n"),
        center = {
            {
                action = "ene | startinsert",
                desc = " New File",
                desc_hl = "String",
                icon = " ",
                icon_hl = "Title",
                key = "e",
                key_hl = "Number"
            },
            {
                action = 'lua require("telescope.builtin").find_files()',
                desc = " Find File",
                desc_hl = "String",
                icon = " ",
                icon_hl = "Title",
                key = "f",
                key_hl = "Number"
            },
            {
                action = 'lua require("telescope.builtin").live_grep()',
                desc = " Find Text",
                desc_hl = "String",
                icon = " ",
                icon_hl = "Title",
                key = "g",
                key_hl = "Number"
            },
            {
                action = 'lua require("telescope.builtin").oldfiles()',
                desc = " Recent Files",
                desc_hl = "String",
                icon = " ",
                icon_hl = "Title",
                key = "r",
                key_hl = "Number"
            },
            {
                action = 'ToDo',
                desc = " TODOs",
                desc_hl = "String",
                icon = " ",
                icon_hl = "TItle",
                key = "t",
                key_hl = "Number"
            },
            {
                action = 'edit ~/.vim/vimrc',
                desc = " Config",
                desc_hl = "String",
                icon = " ",
                icon_hl = "Title",
                key = "c",
                key_hl = "Number"
            },
            {
                action = 'edit ~/.vim/configs/core/plugins.vim',
                desc = " Plugins",
                desc_hl = "String",
                icon = " ",
                icon_hl = "Title",
                key = "p",
                key_hl = "Number"
            },
            {
                action = function() vim.api.nvim_input("<cmd>qa<cr>") end,
                desc = " Quit",
                desc_hl = "String",
                icon = " ",
                icon_hl = "Title",
                key = "q",
                key_hl = "Number"
            },
        },
    footer = {}
    },
}

for _, button in ipairs(opts.config.center) do
  button.desc = button.desc .. string.rep(" ", 39 - #button.desc)
  button.key_format = "  %s"
end

-- open dashboard after closing lazy
if vim.o.filetype == "lazy" then
  vim.api.nvim_create_autocmd("WinClosed", {
    pattern = tostring(vim.api.nvim_get_current_win()),
    once = true,
    callback = function()
      vim.schedule(function()
        vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
      end)
    end,
  })
end

require('dashboard').setup (opts)

EOF
