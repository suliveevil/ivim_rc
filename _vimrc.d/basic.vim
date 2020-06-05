
"----------------------------------✅ Vim----------------------------------"



"✅ 禁用 vi 兼容模式
set nocompatible

set viminfo=20,<50,s10

" backspace
" 解决 vi compatible 模式下 backspace 置空
set backspace = eol
set backspace+= start
set backspace+= indent


set timeout
set timeoutlen=500
"✅ 功能键超时检测（终端下功能键为一串 ESC 开头的字符串）
set ttimeout
" 功能键超时检测 50 毫秒
set ttimeoutlen=50

"✅ 字符--------------------------------------------------------------------


"✅ 空白字符
"如果行尾有多余的空白字符
"让这些字符显示为可见的小方块。
set listchars=tab:»■,trail:■

"✅ 制表符、空格、缩进 Tab & Space
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

"✅ 字体
if has('ivim')
    ifont Menlo 16
    nnoremap <leader>++ :ifont +<cr>
    nnoremap <leader>-- :ifont -<cr>
endif

"换行符显示
set list

"✅ 单行字符数提示(会导致屏幕重绘，耗时)
"set colorcolumn=80

"--------------------------------------------------------------------

" 帮助语言
set helplang=cn,en
set langmenu=zh_CN.utf-8


" 显示光标位置
set ruler

"✅ iVim Extended Keyboards
"nnoremap <leader>eks <D-s>
"nnoremap <leader>ekh <D-h>
"nnoremap <leader>ek. <D-.>


"---------------------------------✅ Vim Leader 键------------------------------"

"✅ Leader 键-空格键作为 Leader(全局变量）
let g:mapleader = "\<space>"



"✅ 普通模式
" jump
" nnoremap <Leader>j <C-]>


"✅ 插入模式 set virtualedit

" iPadOS 不需要设置 ; 替换 :
"nnoremap ; :


"
"
"
