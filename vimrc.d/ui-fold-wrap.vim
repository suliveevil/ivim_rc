"✅ 折叠 Fold----------------------------------------------------------------✅
if has('folding')
    set foldenable
    "method:indent,expr,syntax,marker,diff,manual
    set foldmethod=indent
    set foldlevel=99
    set foldlevelstart=10
    set foldnestmax=10
endif


"✅ 代码折叠自定义快捷键 <leader>zz
let g:FoldMethod = 0
map <leader>zz :call ToggleFold()<cr>
fun! ToggleFold()
    if g:FoldMethod == 0
        exe "normal! zM"
        let g:FoldMethod = 1
    else
        exe "normal! zR"
        let g:FoldMethod = 0
    endif
endfun

