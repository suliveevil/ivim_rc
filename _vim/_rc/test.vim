augroup wordchipper
  autocmd!
  autocmd FileType markdown,mkd,text
      \   inoremap <buffer> <expr> <C-e> wordchipper#chipWith('de')
      \ | inoremap <buffer> <expr> <C-w> wordchipper#chipWith('dB')
      \ | inoremap <buffer> <expr> <C-y> wordchipper#chipWith('d)')
augroup END