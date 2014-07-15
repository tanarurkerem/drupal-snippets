" config which can be overridden (shared lines)
if !exists('g:snipMate')
  let g:snipMate = {}
endif
let s:snipMate = g:snipMate

let s:snipMate['scope_aliases'] = get(s:snipMate,'scope_aliases',{'php' :'drupal,php' })

if has("autocmd")
  " Drupal php files.
  augroup module
    autocmd BufRead,BufNewFile *.{module,install,test,inc,profile} set filetype=php
    autocmd BufRead,BufNewFile *.{info,make} set filetype=dosini
  augroup END
endif
" vim:noet:sw=4:ts=4:ft=vim
