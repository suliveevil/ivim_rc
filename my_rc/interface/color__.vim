"✅ 背景和主题------------------------------------------------------------------
set background=light
colorscheme desert



"✅ 色彩--------------------------------------------------------------------------
if !has('gui_running')
    set t_Co=256
endif
"if(has("gui_running"))
"    colorscheme evening
"else
"    colorshceme default
"endif



"✅ 高亮-------------------------------------------------------------------------

"✅ 行高亮
" #808080

"✅ 语法高亮
if !exists("g:syntax_on")
    syntax enable
endif

"✅ 显示匹配的括号{[(<>)]},设置匹配时间

set matchtime=2
set matchpairs+=<:>

" 设置可以高亮的关键字
if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call
    \ matchadd('Todo','\W\zs\(
    \TODO\|FIXME\|CHANGED\|DONE\|XXX\|BUG\|HACK\)')
    autocmd Syntax * call
    \ matchadd(
    \'Debug','\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
  endif
endif


"✅ 其他 UI 设置项------------------------------------------------------------------

"显示最后一行
"set display=lastline

"允许下方显示目录
set wildmenu
"命令模式下，底部操作指令按下 Tab 键自动补全
"第一次按下 Tab，会显示所有匹配的操作指令的清单；继续按 Tab，会依次选择各个指令。
set wildmode=longest:list,full

function! InsertStatuslineColor(mode)
    if a:mode == 'i'
        hi statusline guibg=magenta
    elseif a:mode == 'n'
        hi statusline guibg=blue
    elseif a:mode == 'r'
        hi statusline guibg=red
    elseif a:mode == 'v'
        hi statusline guibg=green
    else
        hi statusline guibg=grey
    endif
endfunction
au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertChange * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=black

