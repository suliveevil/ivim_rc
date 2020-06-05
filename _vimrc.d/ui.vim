
" 屏幕重绘，取消搜索高亮，刷新 diff 模式高亮，解决代码语法高亮问题


function! NoHighLight
    autocmd nohlsearch
    autocmd diffupdate
    autocmd syntax sync fromstart
    autocmd <C-l>
endfunction

nnoremap <leader>l :NoHighLight<CR>