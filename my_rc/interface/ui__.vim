"⚠️ 标题栏------------------------------------------------------------

set titlelen=0
"set titlestring = %{strftime(\"%Y\-%m\-%d\-%w")}

"set titlestring  = expand("%:p")

"set titlestring += %{strftime(\"%R\")}

"set titlestring+= %{strftime(\"%X\")}


"if &term == "screen"
"   set t_ts=^[k
"   set t_fs=^[\
"endif
"if &term == "screen" || &term == "xterm"
"    set title
"endif




"⚠️ 命令行------------------------------------------------------------

"命令行显示vim当前模式
set showmode


"⚠️ 状态栏------------------------------------------------------------
"状态栏显示当前输入命令
set showcmd
"开启状态栏信息，设置状态栏在倒数第2行
"set laststatus=2
"命令行的高度，默认为1
"set cmdheight=2

"显示文件名和文件路径
"set statusline=%1*\%<%.50F\

"显示文件类型及文件状态
"set statusline+=%=%2*\%y%m%r%h%w\ %*

"显示文件编码类型
"set statusline+=%3*\%{&ff}\[%{&fenc}]\ %*

"显示光标所在行和列
"set statusline+=%4*\ row:%l/%L,col:%c\ %*

"显示光标前文本所占总文本的比例
"set statusline+=%5*\%3p%%\%*

" 状态行显示的内容
" 系统平台、文件类型、光标位置、相对位置
" 时间、文件编码、
"set statusline=
"   %F%m%r%h%w
"   \ [FORMAT=%{&ff}]
"   \ [TYPE=%Y]
"   \ [ASCII=\%03.3b]
"   \ [HEX=\%02.2B]
"   \ [POS=%l,%v][%p%%]
"   \ [POS=%04l,%04v]
"   \ %y%r%m%*%=
"   \ [%p%%]
"   \ [LEN=%L]
"   \ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

set statusline=%F%m%r%h%w/ [FORMAT=%{&ff}]/ [TYPE=%Y]/ [ASCII=/%03.3b]/ [HEX=/%02.2B]/ [POS=%04l,%04v][%p%%]/ [LEN=%L]
