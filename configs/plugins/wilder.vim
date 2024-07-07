let g:hl = wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#f4468f'}])
call wilder#setup({
            \ 'modes': [ ':', '/', '?' ],
            \ 'next_key': '<Tab>',
            \ 'previous_key': '<S-Tab>',
            \ 'accept_key': '<Down>',
            \ 'reject_key': '<Up>',
            \ })
call wilder#set_option('renderer', wilder#popupmenu_renderer(
      \ {
      \     'highlighter': wilder#basic_highlighter(),
      \     'pumblend': 40,
      \     'highlights': {
      \         'border': 'Normal',
      \         'accent': g:hl,
      \     },
      \     'left': [
      \         ' ', wilder#popupmenu_devicons(),
      \     ],
      \     'right': [
      \         '  '
      \     ],
      \ }))
call wilder#set_option('pipeline', [
      \   wilder#branch(
      \     wilder#cmdline_pipeline({
      \       'language': 'python',
      \       'fuzzy': 1,
      \     }),
      \     wilder#python_search_pipeline({
      \       'pattern': wilder#python_fuzzy_pattern(),
      \       'sorter': wilder#python_difflib_sorter(),
      \       'engine': 're',
      \     }),
      \     wilder#python_file_finder_pipeline({
      \       'file_command': ['find', '.', '-type', 'f', '-printf', '%P\n'],
      \       'dir_command': ['find', '.', '-type', 'd', '-printf', '%P\n'],
      \       'filters': ['fuzzy_filter', 'difflib_sorter'],
      \     }),
      \   ),
      \ ])
