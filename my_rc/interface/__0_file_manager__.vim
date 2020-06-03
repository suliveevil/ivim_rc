
"⚠️ 文件浏览器------------------------------------------------------------------
let g:netrw_browsex_viewer='open'
let g:netrw_browse_split = n
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_sort_by = 'time'
let g:netrw_sort_direction = 'reverse'


"⚠️ NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


