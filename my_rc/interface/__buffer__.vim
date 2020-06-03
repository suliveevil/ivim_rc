"✅ Buffer：对应一个文件-------------------------------------------------------

" 允许隐藏被修改过的 buffer
set hidden

" 列出 Buffer 列表
nnoremap <silent><leader>bl :ls<CR>
" 打开一个新 Buffer
nnoremap <silent><leader>bo :enew<CR>
" 关闭当前 Buffer
nnoremap <silent><leader>bd :bdelete<CR>
" 切换到下一个 Buffer
nnoremap <silent><leader>bn :bnext<CR>
" 切换到上一个 Buffer
nnoremap <silent><leader>bp :bprevious<CR>

