
"----------------------------------✅ Vim----------------------------------"



"✅ iVim Extended Keyboards
"nnoremap <leader>eks <D-s>
"nnoremap <leader>ekh <D-h>
"nnoremap <leader>ek. <D-.>

"---------------------------------✅ Vim Esc 键——-------------------------------"

inoremap jk <Esc>

vnoremap jk <Esc>

"---------------------------------✅ Vim Leader 键------------------------------"

"✅ Leader 键-空格键作为 Leader(全局变量）
let g:mapleader = "\<space>"


"✅ 跳转

nnremap <leader>j <C-]>
nnremap <leader>k <C-[>
" 跳转 Home End
noremap H ^
noremap L $



"✅ 普通模式
“ jump
nnoremap <Leader>j <C-]>


"✅ 插入模式 set virtualedit

" iPadOS 不需要设置 ; 替换 :
"nnoremap ; :


" 参考资料
" tpope/vim-sensible
"
"
"
