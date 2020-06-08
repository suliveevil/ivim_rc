
"-----------------------------------✅ Vim-------------------------------------

"✅ 禁用 vi 兼容模式
set nocompatible

set viminfo='20,<50,s10



" backspace
" 解决 vi compatible 模式或终端下 backspace 置空
set backspace=2
set backspace=eol,start,indent

set timeout
set timeoutlen=500
"✅ 功能键超时检测（终端下功能键为一串 ESC 开头的字符串）
set ttimeout
" 功能键超时检测 50 毫秒
set ttimeoutlen=50

"✅ 字符-----------------------------------------------------------------------

"✅ 空白字符
"如果行尾有多余的空白字符,让这些字符显示为可见的小方块。
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

"------------------------------------------------------------------------------

" 帮助语言
if has('iVim')
    set helplang=cn,en
    set langmenu=zh_CN.utf-8
    language message zh_CN.UTF-8
endif

" 显示光标位置
set ruler

"✅ iVim Extended Keyboards
"nnoremap <leader>eks <D-s>
"nnoremap <leader>ekh <D-h>
"nnoremap <leader>ek. <D-.>

"---------------------------------✅ Vim Leader 键-----------------------------

"✅ Leader 键-空格键作为 Leader(全局变量）
let g:mapleader = "\<space>"

"✅ 普通模式
" jump
" nnoremap <Leader>j <C-]>

"✅ 插入模式 set virtualedit=one

" iPadOS 不需要设置 ; 替换 :
"nnoremap ; :

"
"✅ 主题-----------------------------------------------------------------------
colorscheme murphy

"✅ 标签栏状态栏命令栏---------------------------------------------------------
set showtabline=2
set guioptions-=e
set laststatus=2
set wildmode=longest,full
"✅ 行-------------------------------------------------------------------------

"换行符显示
set list

"✅ 单行字符数提示
set colorcolumn=80

"✅ 行号 number
set number
set relativenumber

"✅ 相对行号:根据模式切换相对行号
"augroup relative_numbers
"        autocmd InsertEnter * :set norelativenumber
"        autocmd InsertEnter * :set number
"        autocmd InsertLeave * :set nonumber
"        autocmd InsertLeave * :set relativenumber
"augroup END

"✅ 折行Wrap-------------------------------------------------------------------

"set wrapscan

"✅ 自动折行，即太长的行分成几行显示
"关闭自动折行为set nowrap
set wrap

"不在单词内部折行，只有遇到指定的符号（比如空格、连词号和其他标点符号）才折行。
set linebreak

"指定折行处与编辑窗口的右边缘之间空出的字符数。
set wrapmargin=2

"✅ 设置行宽，即一行显示多少个字符
set textwidth=80

"合并两行中文时，不在中间加空格
set formatoptions+=B

"自动换行
set formatoptions+=t

"代码注释中自动换行
set formatoptions+=c

"代码注释 - 允许 gq 命令对注释进行格式化
set formatoptions+=q

"遇到 Unicode 值大于 255 的字符时不必等到空格再折行（wrap）
set formatoptions+=m

set formatoptions+=w

"✅ 折叠 Fold------------------------------------------------------------------
if has('folding')
    set foldenable
    "method:indent,expr,syntax,marker,diff,manual
    set foldmethod=indent
    set foldlevel=99
    set foldlevelstart=10
    set foldnestmax=10
endif

"✅ 代码折叠自定义快捷键 <leader>zz
let g:FoldMethod = 0
map <leader>zz :call ToggleFold()<cr>
fun! ToggleFold()
    if g:FoldMethod == 0
        exe "normal! zM"
        let g:FoldMethod = 1
    else
        exe "normal! zR"
        let g:FoldMethod = 0
    endif
endfun

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

syntax on
filetype plugin indent on

" disable scanning included files
set complete-=i

" disable searching tags
set complete-=t

"✅ 光标-----------------------------------------------------------------------

" set virtualedit=onemore

"set cursorline
"set cursorcolumn

"✅ 水平滚动时，光标距离行首或行尾的位置（单位：字符）。
"该配置在不折行时比较有用。
"set sidescrolloff=10

set scrolloff=5

"自动定位到上次打开最后位置
if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif

"模式与光标样式
" 1 -> blinking block    
" 2 -> solid block          
" 3 -> blinking underscore
" 4 -> solid underscore  
" 5 -> blinking vertical bar 
" 6 -> solid vertical bar
"SI = 插入模式
let &t_SI.="\e[5 q"
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"

"SR = 替换模式
let &t_SR.="\e[4 q"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"

"EI = 其他模式
let &t_EI.="\e[1 q"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"


" vim cursor escape codes for the terminal emulator
" INSERT (&t_SI)  - vertical bar (I-beam)
" REPLACE (&t_SR) - underscore
" VISUAL (&t_EI)  - block
" let &t_SI = "\<Esc>[5 q"
" let &t_SR = "\<Esc>[3 q"
" let &t_EI = "\<Esc>[1 q"

" set cursor to vertical bar when entering cmd line and
" revert cursor back to block when leaving cmd line
" autocmd CmdlineEnter * execute 'silent !echo -ne "' . &t_SI . '"'
" autocmd CmdlineLeave * execute 'silent !echo -ne "' . &t_EI . '"'



"光标颜色
" if has('gui_running')
"     highlight Cursor guifg=white guibg=black
"     highlight iCursor guifg=white guibg=steelblue
"     set guicursor=n-v-c:block-Cursor
"     set guicursor+=i:ver100-iCursor
"     set guicursor+=n-v-c:blinkon0
"     set guicursor+=i:blinkwait10
" endif

"光标所在行和列
" autocmd InsertLeave,WinEnter * set cursorcolumn
" autocmd InsertEnter,WinLeave * set cursorcolumn
" autocmd InsertLeave,WinEnter * set cursorline
" autocmd InsertEnter,WinLeave * set nocursorline

"✅ 鼠标-----------------------------------------------------------------------
"set mousehide
if has('mouse')
    set mouse=a
endif
set selection=exclusive
set selectmode=mouse,key

"⚠️ 文件浏览器------------------------------------------------------------------

"nnoremap - :Lexplore %:p:h<CR>
"vnoremap - :Lexplore %:p:h<CR>
"inoremap - :Lexplore %:p:h<CR>

let g:netrw_altv=1
let g:netrw_banner = 0
let g:netrw_winsize = 30
let g:netrw_liststyle = 0
let g:netrw_browse_split = 0
let g:netrw_browsex_viewer='open'

let g:netrw_keepdir = 0

let g:netrw_sort_by = 'name'
let g:netrw_sort_options = 'i'
let g:netrw_sort_direction = 'reverse'

"nnoremap    :Lexplore %:p:h<cr>

"vnoremap    :Lexplore %:p:h<cr>

"inoremap    :Lexplore %:p:h<cr>

" 本地文件


"⚠️ 临时文件--------------------------------------------------------------------
" 交换文件
if !isdirectory("_vim/files/backup")
    call mkdir("_vim/files/swap", "p")
endif
set dir         =~/_vim/files/swap/
set updatecount =200
set updatetime  =5000


" 文件 undo tree
set undofile
if !isdirectory("_vim/files/undo")
    call mkdir("_vim/files/undo", "p")
endif
set undodir     =~/_vim/files/undo/
" viminfo 文件
set viminfo     ='100,~/_vim/files/viminfo


" 备份文件
if !isdirectory("_vim/files/backup")
    call mkdir("_vim/files/backup", "p")
endif
set backup
set backupdir   =~/_vim/files/backup/
set backupext   =-vimbackup
set backupskip  =


" 新建

" 打开

" 保存
nnoremap <C-s> :w<cr>

"⚠️ w!! 提权保存文件
" cnoremap w!! w !sudo tee >/dev/null %

" 另存为

" 关闭

" 删除

" 网络文件

" 打开

"⚠️ 在浏览器预览 for iPadOS
" function! ViewInBrowser(name)
"     let file = expand("%:p")
"     let l:browsers = {
"         \"cr":"open -a \"Google Chrome\"",
"         \"ff":"open -a Firefox",
"     \}
"     let htdocs='/Users/leon1/'
"     let strpos = stridx(file, substitute(htdocs, '\\\\', '\', "g"))
"     let file = '"'. file . '"'
"     exec ":update " .file
"     "echo file .' "" '. htdocs
"     if strpos == -1
"         exec ":silent ! ". l:browsers[a:name] ." file://". file
"     else
"         let file=substitute(file, htdocs, "http://127.0.0.1:8090/", "g")
"         let file=substitute(file, '\\', '/', "g")
"         exec ":silent ! ". l:browsers[a:name] file
"     endif
" endfunction
" nmap <Leader>cr :call ViewInBrowser("cr")<cr>
" nmap <Leader>ff :call ViewInBrowser("ff")<cr>

" 保存

" 另存为

" native sidebar
let g:native_sidebar_shortcut = '<C-t>'

"⚠️ 文件搜索和补全时忽略下面扩展名

"✅ Operating System-----------------------------------------------------------

set wildignore+=*DS_Store*,*.app*,.ipch

set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android

set wildignore+=*.gem,*/.nx/**

"✅ version control------------------------------------------------------------

" git-----------------------------------------
set wildignore+=*.git,.git

" merc----------------------------------------
set wildignore+=.hg

"svn------------------------------------------
set wildignore+=.svn,.stversions

"✅ folder---------------------------------------------------------------------

set wildignore+=**/bower_modules/**

set wildignore+=*/.sass-cache/*

set wildignore+=application/vendor/**

set wildignore+=**/vendor/ckeditor/**

set wildignore+=media/vendor/**

"✅ file-----------------------------------------------------------------------

" mirror--------------------------------------
set wildignore+=*.iso

" ebook---------------------------------------
"set wildignore+=*.chm,*.epub,*.pdf,*.mobi

" font----------------------------------------

set wildignore+=*.ttf

" zip file------------------------------------
set wildignore+=*.zip,*.7z,*.rar
set wildignore+=*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz

" image------------------------------------------------------------------------
set wildignore+=*.png,*.jpg,*.jpeg,*.gif,*.bmp
set wildignore+=*.tga,*.pcx,*.ppm,*.img

" audio---------------------------------------
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm

" video---------------------------------------
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc

" office--------------------------------------
set wildignore+=*.ppt,*.pptx
set wildignore+=*.doc,*.docx
set wildignore+=*.xls,*.xlsx,*.xlt
set wildignore+=*.odt
set wildignore+=*.wps

"✅ language-------------------------------------------------------------------

set suffixes+=.swp
set suffixes=.bak,~,.o,.h,.info

set wildignore+=*.spl,*.o,*.out,*~,%*

set wildignore+=*.o,*.obj,*~,*.exe,*.a,*.pdb

set wildignore+=*.lib

set wildignore+=*.so,*.dll,*.swp,*.egg

set wildignore+=*.bin,*.dex

set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu

set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**

set wildignore+=*.mht,*.suo,*.sdf,*.jnlp

set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc

" C-------------------------------------------

" SQL-----------------------------------------

" Python--------------------------------------

set wildignore+=*.pyc

set suffixes+=.pyc,.pyo,.egg-info
set suffixes+=.class

set wildignore+=__pycache__,*.egg-info,.pytest_cache,.mypy_cache/**

" JavaScript----------------------------------

set wildignore+=**/node_modules/**

" Lua-----------------------------------------

" Java----------------------------------------

set wildignore+=*.jar,*.class

" Julia---------------------------------------

" Swift---------------------------------------

" Objective-C---------------------------------

set suffixes+=.obj

"✅ Software-------------------------------------------------------------------

"✅ Emacs--------------------------------------

"✅ Vim----------------------------------------

"✅ Visual Studio Code-------------------------

"✅ Visual Studio------------------------------

"✅ Jetbrains PyCharm--------------------------

"

"✅ 查找 ----------------------------------------------------------------------
" n 始终向后搜索，N 始终向前搜索
nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

" 屏幕重绘，取消搜索高亮，刷新 diff 模式高亮，解决代码语法高亮问题

if !has('gui_running')
    set t_Co=256
endif

"✅ Tab - 管理多个 Window 的布局

"tablist = []
"for i in range(tabpagenr('$'))
"   call extend(tablist, tabpagebuflist(i + 1))
"endfor

" 创建/删除
"nnoremap <leader>tc :tabe<CR>
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
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" 调整

nnoremap <leader>" :res +5<CR>
nnoremap <leader>@ :res -5<CR>
nnoremap <leader>0 :vertical resize-5<CR>
nnoremap <leader>9 :vertical resize+5<CR>

" 退出

"----------------------------------✅ 模式切换---------------------------------

" 普通➡️可视
" v

" 普通➡️可视-行
" V

" 普通➡️可视-块
nnoremap <leader>v <C-v>

" ----------------------------------------------

" 普通➡️选择
" s

" 普通➡️选择-行
" S

" 普通➡️选择-块
nnoremap <leader>s <C-s>

" ----------------------------------------------

" 插入➡️替换

" ----------------------------------------------

" 插入➡️选择

" ----------------------------------------------

" 插入➡️普通
" the method `jj` maps to <Esc> sucks
" because `jj` is used for join the lines
" noremap jj <Esc>
inoremap jk <Esc>
vnoremap jk <Esc>
cnoremap jk <Esc>
snoremap jk <Esc>


" ----------------------------------------------

" 插入➡️命令行

" ----------------------------------------------

" 插入➡️可视

" ----------------------------------------------

" 可视➡️普通
vnoremap <leader>q <ESC>

" ----------------------------------------------

" 命令行➡️普通

"----------------------------------✅ 命令模式---------------------------------
"移动 - Vim ：  Ctrl + [hjkl]
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

"移动 - Emacs ：Ctrl + [fbnpaeg]
"cnoremap <C-p> <Up>
"cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

"----------------------------------✅ 插入模式---------------------------------

"✅ 插入模式
"移动 - Vim ：  Ctrl + [hjkl]
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
"移动 - Emacs ：Ctrl + [fbnpaeg]
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
"inoremap <C-a> <Home>
"inoremap <C-e> <End>
"inoremap <C-g> <ESC>Gi

"✅ 插入模式(粘贴)

"✅ 普通和替换模式-------------------------------------------------------------

"✅ 跳转

nnoremap <leader>j <C-]>
nnoremap <leader>k <C-[>
" 跳转 Home End
noremap H ^
noremap L $

" iPadOS 不需要设置 ; 替换 :
"nnoremap ; :

"保存
nnoremap <C-s> :w<CR>

" 普通➡️可视
" v

" 普通➡️可视-行
" V

" 普通➡️可视-块
nnoremap <leader>v <C-v>

" 普通➡️选择
" s

" 普通➡️选择-行
" S

" 普通➡️选择-块
nnoremap <leader>s <C-s>

"✅ 操组作符等待模式-----------------------------------------------------------

"----------------------------------✅ 可视模式---------------------------------

"----------------------------------✅ 终端模式---------------------------------

"----------------------------------✅ EX 模式----------------------------------
"“”




