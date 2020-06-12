
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



"✅ Vim Leader 键--------------------------------------------------------------

"✅ Leader 键-空格键作为 Leader(全局变量）
let g:mapleader = "\<space>"
noremap <Leader>q <Esc>

"✅ 普通模式
" jump
" nnoremap <Leader>j <C-]>

"✅ 插入模式 set virtualedit=one

" iPadOS 不需要设置 ; 替换 :
"nnoremap ; :



"✅ 主题-----------------------------------------------------------------------


colorscheme murphy

"✅ 颜色和高亮-----------------------------------------------------------------
if !has('gui_running')
    set t_Co=256
    endif

" 设置可以高亮的关键字
if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|DONE\|XXX\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
  endif
endif

" for error highlight，防止错误整行标红导致看不清
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

"✅ 查找 搜索------------------------------------------------------------------
set magic
set hlsearch
set incsearch
set ignorecase
set smartcase

" n 始终向后搜索，N 始终向前搜索
nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

autocmd BufWritePost :nohls<CR>

if has('iVim')
    nnoremap <Leader>dc :!openurl dash://<cword><CR> :<Esc>
    nnoremap <Leader>dw :!openurl eudic://dict/<cword><CR> :<Esc>
else
    nnoremap <Leader>dc :!open -g dash://<cword><CR> :<Esc>
    nnoremap <Leader>dw :!open -g eudic://dict/<cword><CR> :<Esc>

endif

" 屏幕重绘，取消搜索高亮，刷新 diff 模式高亮，解决代码语法高亮问题

"✅ 字符-----------------------------------------------------------------------

"✅ 空白字符
set list
"如果行尾有多余的空白字符,让这些字符显示为可见的小方块。
set listchars=tab:»■,trail:■
" set listchars+=eol:$,

"✅ 制表符、空格、缩进 Tab & Space
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

" for # indent, python文件中输入新行时#号注释不切回行首
autocmd BufNewFile,BufRead *.py inoremap # X<c-h>#

"✅ 字体
if has('ivim')
    ifont Menlo 16
    nnoremap <leader>++ :ifont +<cr>
    nnoremap <leader>-- :ifont -<cr>
endif


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

"✅ 编辑-----------------------------------------------------------------------
" history存储容量
set history=2048

" 文件修改之后自动载入
set autoread

" 剪贴板：让 Y 表现的和其他大写字母一样
map Y y$

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" 重做：u 撤销， U 重做
nnoremap U <C-r>

" 保存python文件时删除多余空格
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl
\ autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()




"✅ 补全和 Tags-----------------------------------------------------------------
set completeopt=longest,menu

" disable scanning included files
" set complete-=i

" disable searching tags
" set complete-=t
set tags=./.tags;,.tags

"✅ 标签栏状态栏命令栏---------------------------------------------------------
set showtabline=2
set guioptions-=e
set laststatus=2
set wildmenu
set wildmode=longest,full
"✅ 行-------------------------------------------------------------------------


"✅ 单行字符数提示
set colorcolumn=80

"✅ 行号 number 相对行号:根据模式切换相对行号
set relativenumber number
autocmd FocusLost * :set norelativenumber number
autocmd FocusGained * :set relativenumber

autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber

function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber number
    else
        set relativenumber
    endif
endfunction


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

set hidden



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
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>bD :bdelete!<cr>

syntax enable
filetype on
filetype plugin on
filetype plugin indent on



"✅ 光标-----------------------------------------------------------------------

" set virtualedit=onemore

set nocursorline
set nocursorcolumn

"✅ 水平滚动时，光标距离行首或行尾的位置（单位：字符）。
"该配置在不折行时比较有用。
"set sidescrolloff=10

set scrolloff=5

"自动定位到上次打开最后位置, 需要确认 .viminfo 当前用户可写
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |
              \exe "normal! g'\"" | endif
endif

"模式与光标样式
" 1 -> blinking block        " 2 -> solid block
" 3 -> blinking underscore   " 4 -> solid underscore
" 5 -> blinking vertical bar " 6 -> solid vertical bar
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

 hi netrwCompress term=NONE cterm=NONE gui=NONE
             \ ctermfg=10 guifg=green  ctermbg=0 guibg=black
 hi netrwData	  term=NONE cterm=NONE gui=NONE
             \ ctermfg=9 guifg=blue ctermbg=0 guibg=black
 hi netrwHdr	  term=NONE cterm=NONE,italic gui=NONE guifg=SeaGreen1
 hi netrwLex	  term=NONE cterm=NONE,italic gui=NONE guifg=SeaGreen1
 hi netrwYacc	  term=NONE cterm=NONE,italic gui=NONE guifg=SeaGreen1
 hi netrwLib	  term=NONE cterm=NONE gui=NONE ctermfg=14 guifg=yellow
 hi netrwObj	  term=NONE cterm=NONE gui=NONE ctermfg=12 guifg=red
 hi netrwTilde	  term=NONE cterm=NONE gui=NONE ctermfg=12 guifg=red
 hi netrwTmp	  term=NONE cterm=NONE gui=NONE ctermfg=12 guifg=red
 hi netrwTags	  term=NONE cterm=NONE gui=NONE ctermfg=12 guifg=red
 hi netrwDoc	  term=NONE cterm=NONE gui=NONE
             \ ctermfg=220 ctermbg=27 guifg=yellow2 guibg=Blue3
 hi netrwSymLink  term=NONE cterm=NONE gui=NONE
             \ ctermfg=220 ctermbg=27 guifg=grey60

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

if !isdirectory("_vim/files/yankring")
    call mkdir("_vim/files/yankring", "p")
endif


" 新建

" 打开

" 保存


"⚠️ w!! 提权保存文件
cnoremap w!! w !sudo tee >/dev/null %

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


"✅ Tab - 管理多个 Window 的布局----------------------------------------------

"tablist = []
"for i in range(tabpagenr('$'))
"   call extend(tablist, tabpagebuflist(i + 1))
"endfor

" 创建/删除
"nnoremap <leader>tc :tabe<CR>


" 移动/聚焦
" gt

" 调整布局

" 总结
" 一个文件可以有一个 Buffer，即只能同时被一个人**修改**。
" 一个 Buffer 只能对应一个文件，只能在一个 Window 里**修改**，
" 也就是说一个 Window 只能对应 一个 Buffer。
" 但一个或多个 Buffer 可以在多个 Window **查看**/展示
" 一个 Window 占用一部分界面。
" 一个 Tab 可以管理一个或多个 Window。
" 一个 Vim 界面可以有多个 Tab。

"✅ Window - 查看一个 Buffer 的内容----------------------------------------------

" 查看

" 创建

nnoremap <leader> x l :set splitright<CR>:vsplit<CR>
nnoremap <leader> x h :set nosplitright<CR>:vsplit<CR>
nnoremap <leader> x k :set nosplitbelow<CR>:split<CR>
nnoremap <leader> x j :set splitbelow<CR>:split<CR>


" 切换/聚焦
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l

" 调整

" nnoremap <leader>w" :res +5<CR>
" nnoremap <leader> w @ :res -5<CR>
nnoremap <leader>w0 :vertical resize-5<CR>
nnoremap <leader>w9 :vertical resize+5<CR>

" 退出

"✅ Buffer 加载一个文件----------------------------------------------

nnoremap <leader>bd :bde<cr>
nnoremap <leader>bD :bde!<cr>

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


" ----------------------------------------------

" 插入➡️替换

" ----------------------------------------------

" 插入➡️选择

" ----------------------------------------------

" 插入➡️普通
" the method `jj` maps to <Esc> sucks
" because `jj` is used for join the lines
" noremap jj <Esc>
inoremap jk <Esc>l
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

"移动 - Emacs ：Ctrl + [fbnpaeg]
"cnoremap <C-p> <Up>
"cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

"----------------------------------✅ 插入模式---------------------------------

"✅ 插入模式
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



"✅ 操组作符等待模式-----------------------------------------------------------

"----------------------------------✅ 可视模式---------------------------------

"----------------------------------✅ 终端模式---------------------------------

"----------------------------------✅ EX 模式----------------------------------
"“”




