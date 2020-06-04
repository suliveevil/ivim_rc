

"✅ 禁用 vi 兼容模式
set nocompatible

" backspace
" 解决 vi compatible 模式下 backspace 置空
set backspace = eol
set backspace+= start
set backspace+= indent

"✅ netrw 自适应当前文件夹
let g:netrw_keepdir=0

" 

let g:netrw_scp_cmd = 'scp -s'

set backspace=start,indent,eol

"✅ 功能键超时检测（终端下功能键为一串 ESC 开头的字符串）
set ttimeout

" 功能键超时检测 50 毫秒
set ttimeoutlen=50

" 显示光标位置
set ruler