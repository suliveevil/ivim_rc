"✅ 鼠标-----------------------------------------------------------------
"set mousehide
if has('mouse')
    set mouse=a
endif
set selection=exclusive
set selectmode=mouse,key


"✅ 光标-----------------------------------------------------------------

"✅ 水平滚动时，光标距离行首或行尾的位置（单位：字符）。
"该配置在不折行时比较有用。
"set sidescrolloff=10

"显示光标位置
set ruler
set scrolloff=9

"自动定位到上次打开最后位置
if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif


"模式与光标样式
"SI = 插入模式
let &t_SI.="\e[5 q"
"SR = 替换模式
let &t_SR.="\e[4 q"
"EI = 其他模式
let &t_EI.="\e[1 q"
"  1 -> blinking block    2 -> solid block           3 -> blinking underscore
"  4 -> solid underscore  5 -> blinking vertical bar 6 -> solid vertical bar
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"


"光标颜色
if has('gui_running')
    highlight Cursor guifg=white guibg=black
    highlight iCursor guifg=white guibg=steelblue
    set guicursor=n-v-c:block-Cursor
    set guicursor+=i:ver100-iCursor
    set guicursor+=n-v-c:blinkon0
    set guicursor+=i:blinkwait10
endif


"光标所在行和列
autocmd InsertLeave,WinEnter * set cursorcolumn
autocmd InsertEnter,WinLeave * set cursorcolumn
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline
