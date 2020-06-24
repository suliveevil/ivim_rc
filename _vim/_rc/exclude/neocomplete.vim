" 补全并关闭弹出窗口
inoremap <expr><space>  pumvisible() ? neocomplete#close_popup() . "\<SPACE>" : "\<SPACE>"
" 下一项
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

inoremap <s-tab> <Up>



let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags

let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'markdown' : $HOME.'/.vim/dict/sum.dict',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'