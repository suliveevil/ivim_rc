





"✅ Tab - 管理多个 Window 的布局

"tablist = []
"for i in range(tabpagenr('$'))
"   call extend(tablist, tabpagebuflist(i + 1))
"endfor

" 创建/删除
nnoremap <leader>tc :tabe<CR>
"nnoremap <leader>tp :tabe<CR>
"nnoremap <leader>tn :tabe<CR>
"nnoremap t- :-tabnext<CR>
"nnoremap t= :+tabnext<CR>

" 移动/聚焦


" 调整布局


" 总结
" 一个文件可以有一个 Buffer，即只能同时被一个人**修改**。
" 一个 Buffer 只能对应一个文件，只能在一个 Window 里**修改**，
" 也就是说一个 Window 只能对应 一个 Buffer。
" 但一个或多个 Buffer 可以在多个 Window **查看**/展示
" 一个 Window 占用一部分界面。
" 一个 Tab 可以管理一个或多个 Window。
" 一个 Vim 界面可以有多个 Tab。


