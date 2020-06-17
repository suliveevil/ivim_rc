
let g:UltiSnipsExpandTrigger = "<NOP>"
let g:UltiSnipsJumpForwardTrigger="<NOP>"
let g:UltiSnipsJumpBackwordTrigger = "<NOP>"


" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-f>"
" let g:UltiSnipsJumpBackwardTrigger="<c-b>"

let g:ulti_expand_or_jump_res = 0
function! ExpandSnippetOrJumpForwardOrReturnTab()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<TAB>"
    endif
endfunction



inoremap <expr> <TAB> pumvisible() ? "\<C-n>"
\ : "<C-R>=ExpandSnippetOrJumpForwardOrReturnTab()<CR>"

    

" snoremap <TAB>   跳到下一个光标位置或者什么也不做
snoremap <buffer> <silent> <TAB> <ESC>:call UltiSnips#JumpForwards()<CR>
" inoremap <S-TAB> 跳到上一项，上一个光标位置或者什么也不做
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>"
\ : "<C-R>=UltiSnips#JumpBackwards()<CR>"



" snoremap <S-TAB> 跳到上一个光标位置或者什么也不做
snoremap <buffer> <silent> <S-TAB> <ESC>:call UltiSnips#JumpBackwards()<CR>



" inoremap <CR>    补全、关闭菜单或插入新行
inoremap <silent> <CR> <C-r>=<SID>ExpandSnippetOrReturnEmptyString()<CR>
function! s:ExpandSnippetOrReturnEmptyString()
    if pumvisible()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<C-y>\<CR>"
    endif
    else
        return "\<CR>"
endfunction