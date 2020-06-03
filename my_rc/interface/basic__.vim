"✅------------------------------基本界面显示--------------------------------✅

" 帮助语言
"set helplang=cn
"set langmenu=zh_CN.utf-8


"出错时，发出视觉提示，，不要发出响声
set errorbells
set visualbell

set nostartofline
set showmatch
set showmode
set showcmd
set lazyredraw


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

"✅ 字体----------------------------------------------------------------------
if has('ivim')
    ifont Menlo 15
else
    "
endif

"✅ 行--------------------------------------------------------------------------

"换行符显示
set list

"✅ 单行字符数提示
set colorcolumn=80

"✅ 行号
set number
"✅ 相对行号
"✅ 根据模式切换相对行号
augroup relative_numbers
        autocmd!
        autocmd InsertEnter * :set norelativenumber
        autocmd InsertLeave * :set relativenumber
augroup END

