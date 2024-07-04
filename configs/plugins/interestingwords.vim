let g:interestingWordsDefaultMappings = 0
" hc is the shortcut for highlight current
nnoremap <silent> \ :call InterestingWords('n')<cr>
vnoremap <silent> \ :call InterestingWords('v')<cr>

nnoremap <silent> n :call WordNavigation(1)<cr>
nnoremap <silent> N :call WordNavigation(0)<cr>
