lua << EOF
    require("catppuccin").setup({
        integrations = {
            coc_nvim = true,
            dropbar = {
                enabled = true,
                color_mode = true, -- enable color for kind's texts, not just kind's icons
            },
            indent_blankline = {
                enabled = true,
                scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
                colored_indent_levels = true,
            },
            mason = true,
        }
})
EOF
