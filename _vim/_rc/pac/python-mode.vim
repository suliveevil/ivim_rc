autocmd FileType python nnoremap <buffer> K :call PyDocVim()<CR>

function! PyDocVim()
python3 << EOF
import jedi

curfile = vim.current.buffer.name
row = vim.current.window.cursor[0]
col= vim.current.window.cursor[1]

script = jedi.Script(
    source=None,
    path=curfile,
    line=row,
    column=col)

try:
    definitions = script.goto_definitions()
except Exception:
    # print to stdout, will be in :messages
    definitions = []
    print("Exception, this shouldn't happen.")
    print(traceback.format_exc())

    if not definitions:
        echo_highlight("No documentation found for that.")
        vim.command("return")

docs = []
for d in definitions:
    doc = d.docstring()
    if doc:
        title = "Docstring for %s" % d.desc_with_module
        underline = "=" * len(title)
        docs.append("%s\n%s\n%s" % (title, underline, doc))
    else:
        docs.append("|No Docstring for %s|" % d)
    text = ("\n" + "-" * 79 + "\n").join(docs)
vim.command("let docWidth = %s" % len(title))
vim.command("let doc_lines = %s" % len(text.split("\n")))
EOF
    "Scroll
    function! s:popup_filter(winid, key)
        if a:key ==# "\<c-k>"
            call win_execute(a:winid, "normal! \<c-y>")
            return v:true
        elseif a:key ==# "\<c-j>"
            call win_execute(a:winid, "normal! \<c-e>")
            return v:true
        elseif a:key ==# 'q' || a:key ==# 'x'
            return popup_filter_menu(a:winid, 'x')
        endif
        return v:false
    endfunction

    let lines = py3eval('text')
    let winid = popup_create(lines->split('\n'), #{
            \ filter: function('s:popup_filter'),
            \ pos: 'botleft',
            \ line: 'cursor-1',
            \ col: 'cursor',
            \ moved: 'any',
            \ border: [1,1,1,1,1,1,1,1],
            \ borderchars: ['─', '│', '─', '│', '┌', '┐', '┘', '└'],
            \ borderhighlight: ['Todo'],
            \ padding: [0,1,0,1],
            \ firstline: 1,
            \ scrollbar: 1,
            \ minwidth: docWidth,
            \ maxwidth: 74,
            \ minheight: doc_lines,
            \ maxheight: 20,
            \ mapping: 0,
            \ })

    call setbufvar(winbufnr(winid), '&syntax','rst')
    call setwinvar(winid, '&wincolor', 'Normal')
endfunction








"开启python-mode定义的移动方式
let g:pymode_motion = 1




"启用python-mode内置的python文档，使用K进行查找
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'


" 使用 python3
let g:pymode_python = 'python3'

" 使用PEP8风格的缩进
let g:pymode_indent = 1

"保存文件时自动删除无用空格
let g:pymode_options = 1
let g:pymode_trim_whitespaces = 1


" 取消代码折叠
let g:pymode_folding = 0

" 警告
let g:pymode_warnings = 0



"显示允许的最大长度的列
let g:pymode_options_colorcolumn = 1

"设置QuickFix窗口的最大，最小高度
let g:pymode_quickfix_minheight = 5
let g:pymode_quickfix_maxheight = 10











"自动检测并启用virtualenv
let g:pymode_virtualenv = 1

" 运行python代码
let g:pymode_run = 1
let g:pymode_run_bind = '<Leader>r'

" 设置断点
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" 语法检查
let g:pymode_lint = 1

" 编辑时进行检查
let g:pymode_lint_on_fly = 1
let g:pymode_lint_checkers = ['pyflakes', 'autopep8']

" 保存时进行检查
let g:pymode_lint_on_write = 0

" 发现错误时不自动打开QuickFix窗口
let g:pymode_lint_cwindow = 0









"开启python所有的语法高亮
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
"高亮缩进错误
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"高亮空格错误
let g:pymode_syntax_space_errors = g:pymode_syntax_all


" 侧边栏标志
let g:pymode_lint_signs = 1
let g:pymode_lint_todo_symbol = 'WW'
let g:pymode_lint_comment_symbol = 'CC'
let g:pymode_lint_visual_symbol = 'RR'
let g:pymode_lint_error_symbol = 'EE'
let g:pymode_lint_info_symbol = 'II'
let g:pymode_lint_pyflakes_symbol = 'FF'









" 重构 rope
let g:pymode_rope = 0

" 不在父目录下查找.ropeproject，能提升响应速度
" let g:pymode_rope_lookup_project = 0

" 查阅光标下单词的相关文档
" let g:pymode_rope_show_doc_bind = '<C-c>d'

" 项目修改后重新生成缓存
let g:pymode_rope_regenerate_on_write = 1

" 补全
let g:pymode_rope_completion = 0
" let g:pymode_rope_complete_on_dot = 1
" let g:pymode_rope_completion_bind = '<C-Tab>'


" 跳转到定义处，同时新建竖直窗口打开
" let g:pymode_rope_goto_definition_bind = '<C-c>g'
" let g:pymode_rope_goto_definition_cmd = 'vnew'

" 重命名光标下的函数，方法，变量及类名
" let g:pymode_rope_rename_bind = '<C-c>rr'

" 重命名光标下的模块或包
" let g:pymode_rope_rename_module_bind = '<C-c>r1r'

