lua << EOF
require('copilot').setup({
    panel = {
        auto_refresh = true,
        keymap = {
            jump_prev = "<C-k>",
            jump_next = "<C-j>",
            accept = "<CR>",
            open = "<F7>",
            refresh = "<leader>r",
        }
    },
    suggestion = {
        keymap = {
            accept = "<tab>",
            accept_word = false,
            accept_line = false,
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
        }
    },
    filetypes = {
        ["*"] = false,
        cpp = true,
        c = true,
        python = true,
        sh = true
    }
})
EOF
