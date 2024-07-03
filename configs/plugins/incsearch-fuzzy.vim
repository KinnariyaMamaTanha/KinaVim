function! s:config_fuzzyall(...) abort
  return extend(copy({
  \   'converters': [
  \     incsearch#config#fuzzy#converter(),
  \     incsearch#config#fuzzyspell#converter()
  \   ],
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> f/ incsearch#go(<SID>config_fuzzyall())
noremap <silent><expr> f? incsearch#go(<SID>config_fuzzyall({'command': '?'}))
noremap <silent><expr> fg? incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))
