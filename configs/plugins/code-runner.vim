lua << EOF

require('code_runner').setup({
  filetype = {
    python = "python3 -u",
    c = {
        "cd $dir &&",
        "gcc $fileName -g -o $fileNameWithoutExt &&",
        "$dir/$fileNameWithoutExt"
    },
    cpp = {
        "cd $dir &&",
        "g++ $fileName -g -o $fileNameWithoutExt &&",
        "$dir/$fileNameWithoutExt"
    },
    bash = "bash $filename"
  },
})

EOF

nmap <F5> :call Compile_and_run_single_file()<CR>

func! Compile_and_run_single_file()
    exec "w"
    if &filetype == 'c' || &filetype == 'cpp' || &filetype == 'python'
        RunFile
    elseif &filetype == 'markdown'
        CocCommand markdown-preview-enhanced.openPreview
    elseif &filetype == 'tex'
        VimtexCompile
    endif
endfunction
