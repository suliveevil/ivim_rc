
" keymap
" let g:ZFVimIM_keymap = 0
" nnoremap <Leader>ijmd  :call ZFVimIM_DEBUG_profileInfo()<CR>
" nnoremap <expr><silent><Leader>ikm ZFVimIME_keymap_toggle_n()
" inoremap <expr><Leader>ikm         ZFVimIME_keymap_toggle_i()
" vnoremap <expr><Leader>ikm         ZFVimIME_keymap_toggle_v()
" nnoremap <expr><silent><Leader>ijm ZFVimIME_keymap_next_n()
" inoremap <expr><Leader>ijm         ZFVimIME_keymap_next_i()
" vnoremap <expr><Leader>ijm         ZFVimIME_keymap_next_v()

" cache
if !isdirectory("_vim/.files/ZFVimIM")
    call mkdir("_vim/.files/ZFVimIM", "p")
endif
let g:ZFVimIM_cachePath = $HOME.'/_vim/.files/ZFVimIM'

" config
let g:ZFVimIM_autoAddWordLen=3*4

" debug
let g:ZFVimIME_DEBUG=1
let g:ZFJobVerboseLogEnable = 1
" profile
let g:ZFVimIM_DEBUG_profile = 1


" let g:ZFVimIM_symbolMap = {
"             \   ' ' : [''],
"             \   '`' : ['·'],
"             \   '!' : ['！'],
"             \   '$' : ['￥'],
"             \   '^' : ['……'],
"             \   '-' : [''],
"             \   '_' : ['——'],
"             \   '(' : ['（'],
"             \   ')' : ['）'],
"             \   '[' : ['【'],
"             \   ']' : ['】'],
"             \   '<' : ['《'],
"             \   '>' : ['》'],
"             \   '\' : ['、'],
"             \   '/' : ['、'],
"             \   ';' : ['；'],
"             \   ':' : ['：'],
"             \   ',' : ['，'],
"             \   '.' : ['。'],
"             \   '?' : ['？'],
"             \   "'" : ['‘', '’'],
"             \   '"' : ['“', '”'],
"             \   '0' : [''],
"             \   '1' : [''],
"             \   '2' : [''],
"             \   '3' : [''],
"             \   '4' : [''],
"             \   '5' : [''],
"             \   '6' : [''],
"             \   '7' : [''],
"             \   '8' : [''],
"             \   '9' : [''],
"             \ }


" sync
" let g:ZFVimIM_cloudSync_enable=1
" IMCloud
" call ZFVimIM_uploadAllSync()
" call ZFVimIM_uploadAllAsync()


" let g:ZFVimIM_cloudAsync_autoInit=1
" let g:ZFVimIM_cloudAsync_timeout=30000


