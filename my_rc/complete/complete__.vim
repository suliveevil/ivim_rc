" 命令行模式下自动补全
set wildmenu





set completeopt+=noinsert
set completeopt+=menuone
set completeopt+=noselect
set completeopt+=longest
set completeopt+=preview
set completeopt+=menu

"✅ Shebang 补全
set completeopt=longest,menu
" 定义函数AutoSetFileHead，自动插入文件头
autocmd BufNewFile *.sh,*.py exec ":call AutoSetFileHead()"
function! AutoSetFileHead()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif

    "如果文件类型为python
    if &filetype == 'python'
        " call setline(1, "\#!/usr/bin/env python")
        " call append(1, "\# encoding: utf-8")
        call setline(1, "\# -*- coding: utf-8 -*-")
    endif

    normal G
    normal o
    normal o
endfunc

"✅ 版权补全
function AddTitle()
    call append(0,"\#!/bin/sh")
    call append(1,"# ******************************************************")
    call append(2,"# Author       : suliveevil ")
    call append(3,"# Last modified: ".strftime("%Y-%m-%d %H:%M"))
    call append(4,"# Email        : suliveevil@outlook.com")
    call append(5,"# blog         : https://suliveevil.github.io")
    call append(6,"# Filename     : ".expand("%:t"))
    call append(7,"# Description  : ")
    call append(8,"# ******************************************************")
    echohl WarningMsg | echo "Successful in adding Copyright." | echohl None
endf

function UpdateTitle()
     normal m'
     execute '/# Last modified/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
     normal ''
     normal mk
     execute '/# Filename/s@:.*$@\=":\t".expand("%:t")@'
     execute "noh"
     normal 'k
     echohl WarningMsg | echo "Successful in updating the copyright." | echohl None
endfunction

function TitleDet()
    let n=1
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddTitle()
endfunction

map <leader>ch :call TitleDet()<cr>
"map <leader>fh :call TitleDet()<cr>
