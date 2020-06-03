"✅ Buffer - 加载一个文件

" 查看
nnoremap <silent><leader>bl :ls<cr>

" 创建

nnoremap <silent><leader>bo :enew<cr>

" 切换
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bn :bnext<cr>

" 隐藏

nnoremap <leader>bh :bhide<cr>

" 退出
nnoremap <leader>bd :bdelete <cr>
nnoremap <leader>bD :bdelete!<cr>




"✅ Window - 查看一个 Buffer 的内容

" 查看

" 创建

nnoremap <leader>wl :set splitright<CR>:vsplit<CR>
nnoremap <leader>wh :set nosplitright<CR>:vsplit<CR>
nnoremap <leader>wk :set nosplitbelow<CR>:split<CR>
nnoremap <leader>wj :set splitbelow<CR>:split<CR>
"nnoremap <leader>wd :bde <cr>
"nnoremap <leader>wD :bde!<cr>

" 切换/聚焦

nnoremap <leader>l <C-w>l
nnoremap <leader>k <C-w>k
nnoremap <leader>j <C-w>j
nnoremap <leader>h <C-w>h


" 调整

nnoremap <leader># :res +5<CR>
nnoremap <leader>@ :res -5<CR>
nnoremap <leader>0 :vertical resize-5<CR>
nnoremap <leader>9 :vertical resize+5<CR>

" 退出



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


