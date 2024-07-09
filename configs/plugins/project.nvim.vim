lua << EOF
require("project_nvim").setup (
{
    -- Methods of detecting the root directory. **"lsp"** uses the native neovim
    -- lsp, while **"pattern"** uses vim-rooter like glob pattern matching. Here
    -- order matters: if one is not detected, the other is used as fallback. You
    -- can also delete or rearangne the detection methods.
    detection_methods = { "pattern" },

    -- All the patterns used to detect root dir, when **"pattern"** is in
    -- detection_methods
    patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", ".root" },

    -- When set to false, you will get a message when project.nvim changes your
    -- directory.
    silent_chdir = false,

    -- What scope to change the directory, valid options are
    -- * global (default)
    -- * tab
    -- * win
    -- scope_chdir = 'global',

    -- Path where project.nvim will store the project history for use in
    -- telescope
    datapath = "~/.vim/projects.nvim",
})

require('telescope').load_extension('projects')
EOF

nmap <leader>p :lua require'telescope'.extensions.projects.projects{}<CR>
