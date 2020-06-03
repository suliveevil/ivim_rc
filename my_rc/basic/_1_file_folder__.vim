"✅ 文件----------------------------------------------------------------

"✅ 处理未保存或者只读文件时,给出提示
set confirm

"✅ 历史
set undofile

set history=2048

if has('nvim') && ! has('win32') && ! has('win64')
    set shada=!,'300,<50,@100,s10,h
else
    set viminfo='300,<10,@50,h,n$DATA_PATH/viminfo
endif

augroup user_persistent_undo
    autocmd!
    au BufWritePre /tmp/*          setlocal noundofile
    au BufWritePre COMMIT_EDITMSG  setlocal noundofile
    au BufWritePre MERGE_MSG       setlocal noundofile
    au BufWritePre *.tmp           setlocal noundofile
    au BufWritePre *.bak           setlocal noundofile
augroup END

"✅ 文件编辑位置记忆
"让vim记忆文件上次编辑的位置
autocmd BufReadPost *
        \ if line("'\"")>0&&line("'\"")<=line("$") |
        \ exe "normal g'\"" |
        \ endif



"⚠️ 文件修改后自动载入
set autoread

"⚠️ 文件自动回写
set autowrite

"✅ 备份

set nobackup
set nowritebackup

"⚠️ 交换文件
set noswapfile


" ⚠️ 自动把内容写回文件: 如果文件被修改过
" 在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、
" 和:!、:make、CTRL-] 和 CTRL-^命令时进行
" 用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
set autowrite



"⚠️ 文件格式 File Format：换行符 Line Ending
"Linux、Unix：LF,macOS：CR,Windows：CRLF
set fileformats=unix,dos,mac

"将指定文件的换行符转换成 UNIX 文件格式
autocmd FileType php,javascript,html,css,python,vim,vimwiki  set ff=unix

if has('multi_byte')
    set encoding=utf-8
    set fileencoding =utf-8
    set fileencodings=ucs-bom,utf-8,gbk,cp936,gb18030,big5,euc-jp,euc-kr,latin1
    scriptencoding utf-8
    "windows
    if has('win32')
        language english
        "处理consle输出乱码
        let &termencoding=&encoding
    endif
    set fencs=utf-8,gbk,chinese,latin1
    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
        set ambiwidth=double
    endif
else
    echoerr "This Vim was not compiled with +multi_byte"
endif

"✅ 文件编码

"⚠️ 文件编码识别和修改
let g:fencview_autodetect=1

set fileencoding =utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"✅ Buffer 编码
set encoding=utf-8

"✅ 终端编码
set termencoding=utf-8


"⚠️ 文件类型
filetype on




"⚠️ 预处理

autocmd BufRead,BufNewFile *.md set filetype=markdown

"✅ 文件夹---------------------------------------------------------------

"在一个 Vim 会话之中打开多个文件时，将工作目录自动切换到正在编辑的文件的目录。
set autochdir

set directory=$DATA_PATH/swap//,$DATA_PATH,~/tmp,/var/tmp,/tmp
set undodir=$DATA_PATH/undo//,$DATA_PATH,~/tmp,/var/tmp,/tmp
set backupdir=$DATA_PATH/backup/,$DATA_PATH,~/tmp,/var/tmp,/tmp
set viewdir=$DATA_PATH/view/
set spellfile=$VIM_PATH/spell/en.utf-8.add



"⚠️ 如果是 sudo 用户, 关闭 vim swap/backup/undo/shada/viminfo 写入
if $SUDO_USER !=# '' && $USER !=# $SUDO_USER
        \ && $HOME !=# expand('~'.$USER)
        \ && $HOME ==# expand('~'.$SUDO_USER)

    set noswapfile
    set nobackup
    set noundofile
    if has('nvim')
        set shada="NONE"
    else
        set viminfo="NONE"
    endif
endif

"⚠️ 在 temp 或 shm 文件夹内关闭 swap/undo/viminfo/shada 文件
"augroup user_secure
"    autocmd!
"    silent! autocmd BufNewFile,BufReadPre
"        \ /tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim
"        \ setlocal noswapfile noundofile nobackup nowritebackup viminfo= shada=
"augroup END



