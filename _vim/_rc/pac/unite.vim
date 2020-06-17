function! UltiSnipsCallUnite()
    Unite -start-insert -winheight=100 -immediately -no-empty ultisnips
    return ''
endfunction

inoremap <silent> <F12> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
nnoremap <silent> <F12> a<C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
  