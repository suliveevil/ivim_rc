let g:UltiSnipsExpandTrigger = "<f5>"        " Do not use <tab>
let g:UltiSnipsJumpForwardTrigger = "<c-b>"  " Do not use <c-j>

let g:AutoPairsMapCR = 0
let g:AutoPairsMapSpace = 0
imap <silent> <expr> <space> pumvisible()
\ ? "<space>"
\ : "<c-r>=AutoPairsSpace()<cr>"


set completeopt=menuone,preview,noinsert

let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#completion_delay = 50
let g:mucomplete#reopen_immediately = 0
let g:mucomplete#always_use_completeopt = 1



inoremap <silent> <expr> <plug>UltiExpand
    \ mucomplete#ultisnips#expand_snippet("\<cr>")
imap <plug>MyCR <plug>UltiExpand<plug>AutoPairsReturn
imap <cr> <plug>MyCR
 let g:ulti_expand_or_jump_res = 0
 fun! TryUltiSnips()
  if !pumvisible() " Do not trigger UltiSnips with Tab when the pop-up menu is open
    call UltiSnips#ExpandSnippetOrJump()
  endif
  return ''
endf
 fun! TryMUcomplete()
  return g:ulti_expand_or_jump_res ? "" : "\<plug>(MyFwd)"
endf
 imap <plug>(MyFwd) <plug>(MUcompleteFwd)
inoremap <plug>(TryUlti) <c-r>=TryUltiSnips()<cr>
imap <expr> <silent> <plug>(TryMU) TryMUcomplete()
imap <expr> <silent> <tab> "\<plug>(TryUlti)\<plug>(TryMU)"