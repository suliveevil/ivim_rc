
" 屏幕重绘，取消搜索高亮，刷新 diff 模式高亮，解决代码语法高亮问题
nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>