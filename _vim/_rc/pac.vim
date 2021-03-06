
" ┌───────────────────────────────────────────────────────────────────────────┐
" │                               Vim Plugins                                 │
" └───────────────────────────────────────────────────────────────────────────┘

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                Lazy Load                                  │
" └───────────────────────────────────────────────────────────────────────────┘

" put your plugin folder under "~/.vim/pack/*/opt/",
" then add autocmds into this file("pac.vim")
" augroup lazy_load
"     autocmd!
"     autocmd VimEnter * :packadd searchvim
"     autocmd VimEnter * :packadd python-mode
"     autocmd! lazy_load
" augroup END

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                Text Object                                │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : vim-textobj-user ---------------

" Plugin : vim-textobj-url  ---------------


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                              Debug/Lint                                   │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : ale -----------------

" Plugin : ** -----------------

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                Format                                     │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : neoformat -----------------

" Plugin : ** -----------------

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                Code Tag                                   │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : tagbar -----------------
nnoremap <silent><leader>tb :TagbarToggle<CR>

let g:tagbar_left=1
let tagbar_width=30
let g:tagbar_compact = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_map_showproto="#"

"设置tagber对于markdown的支持
" let g:tagbar_type_markdown = {
"     \ 'ctagstype' : 'markdown',
"     \ 'kinds' : [
"     \ 'h:Chapter',
"     \ 'i:Section',
"     \ 'k:Paragraph',
"     \ 'j:Subparagraph'
"     \ ]
" \ }

" Plugin : taglist -----------------

nnoremap <Leader>tl    :TlistToggle<CR>

let Tlist_WinWidth = 40

let Tlist_Sort_Type = 'order'

" Plugin : vim-autotag -----------------

" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:autotagStopAt = [
\     '.root',
\     '.svn',
\     '.git',
\     '.hg',
\     '.history',
\     '.project',
\     '.idea',
\     '.vscode',
\     'requirements.txt',
\ ]

" 所生成的数据文件的名称 "
let g:autotagTagsFile="tags"

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                  CmdMode TerminalMode REPL RunCode                        │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : vim-repl -----------------

nnoremap <leader>cr :REPLToggle<Cr>
let g:sendtorepl_invoke_key = "<leader>sio"
autocmd Filetype python nnoremap <F12> <Esc>:REPLDebugStopAtCurrentLine<Cr>
autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBN<Cr>
autocmd Filetype python nnoremap <F11> <Esc>:REPLPDBS<Cr>

let g:repl_program = {
            \   'python':  'python3',
            \   'default': 'ivish',
            \   'lua': 'lua',
            \   'vim': 'vim -e',
\ }

let g:repl_input_symbols = {
    \ 'python': '>>>',
    \ }
let g:repl_console_name = 'swy-PDB'

let g:repl_exit_commands = {
    \'python': 'quit()',
    \'bash': 'exit',
    \'zsh': 'exit',
    \'default': 'exit',
\}

let g:repl_predefine_python = {}

let g:repl_ipython_version = '7.15'
let g:repl_cursor_down = 1
let g:repl_python_automerge = 1
let g:repl_ipython_version = '7'
let g:repl_position = 3

" Plugin : ** -----------------

" Plugin : ** -----------------

" Plugin : ** -----------------



"
" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                 Character                                 │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : unicode.vim -----------------

nnoremap guc :UnicodeName<CR>

" Plugin : painless-digraph -----------------
inoremap <silent> <Leader>ede  <Plug>(PainlessdigraphEnable)
inoremap <silent> <Leader>edd  <Plug>(PainlessdigraphDisable)
inoremap <silent> <Leader>edt  <Plug>(PainlessdigraphToggle)



" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                 Chinese                                   │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : pangu -----------------------------

autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.org
\ call PanGuSpacing()


" Plugin : ZFVimIM ZFVimJob ----------
" keymap
" let g:ZFVimIM_keymap = 0
" nnoremap <Leader>ijmd  :call ZFVimIM_DEBUG_profileInfo()<CR>
" nnoremap <expr><silent><Leader>ikm ZFVimIME_keymap_toggle_n()
" inoremap <expr><Leader>ikm         ZFVimIME_keymap_toggle_i()
" vnoremap <expr><Leader>ikm         ZFVimIME_keymap_toggle_v()
" nnoremap <expr><silent><Leader>ijm ZFVimIME_keymap_next_n()
" inoremap <expr><Leader>ijm         ZFVimIME_keymap_next_i()
" vnoremap <expr><Leader>ijm         ZFVimIME_keymap_next_v()

" cache
if !isdirectory("_vim/.files/ZFVimIM")
    call mkdir("_vim/.files/ZFVimIM", "p")
endif
let g:ZFVimIM_cachePath = $HOME.'/_vim/.files/ZFVimIM'

" config
let g:ZFVimIM_autoAddWordLen=3*4

" debug
let g:ZFVimIME_DEBUG=1
let g:ZFJobVerboseLogEnable = 1
" profile
let g:ZFVimIM_DEBUG_profile = 1

" let g:ZFVimIM_symbolMap = {
"             \   ' ' : [''],
"             \   '`' : ['·'],
"             \   '!' : ['！'],
"             \   '$' : ['￥'],
"             \   '^' : ['……'],
"             \   '-' : [''],
"             \   '_' : ['——'],
"             \   '(' : ['（'],
"             \   ')' : ['）'],
"             \   '[' : ['【'],
"             \   ']' : ['】'],
"             \   '<' : ['《'],
"             \   '>' : ['》'],
"             \   '\' : ['、'],
"             \   '/' : ['、'],
"             \   ';' : ['；'],
"             \   ':' : ['：'],
"             \   ',' : ['，'],
"             \   '.' : ['。'],
"             \   '?' : ['？'],
"             \   "'" : ['‘', '’'],
"             \   '"' : ['“', '”'],
"             \   '0' : [''],
"             \   '1' : [''],
"             \   '2' : [''],
"             \   '3' : [''],
"             \   '4' : [''],
"             \   '5' : [''],
"             \   '6' : [''],
"             \   '7' : [''],
"             \   '8' : [''],
"             \   '9' : [''],
" \ }

" sync
" let g:ZFVimIM_cloudSync_enable=1
" IMCloud
" call ZFVimIM_uploadAllSync()
" call ZFVimIM_uploadAllAsync()

" let g:ZFVimIM_cloudAsync_autoInit=1
" let g:ZFVimIM_cloudAsync_timeout=30000


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                               Document                                    │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : vim-tldr -----------------

let g:tldr_directory_path = '~/.vim/pack/misc/start/tldr'

" one of ["horizontal", "vertical", "tab"]
let g:tldr_split_type = 'tab'

" one of ['en','es','fr','it','ko','pt-BR','ta','zh']
let g:tldr_language = 'zh'

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                 Python                                    │
" └───────────────────────────────────────────────────────────────────────────┘

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

" Plugin : python-mode --------------------

" lazyload
packadd python-mode

" functions: 语法检查          同类插件：neomake
" functions: 快速运行          同类插件：
" functions: 代码格式化         同类插件：neoformat
" functions: 查询 Python 文档  同类插件：
" functions: 断点调试           同类插件：vim-vebugger

" 使用 python3
let g:pymode_python = 'python3'

"开启python所有的语法高亮
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_slow_sync = 1
let g:pymode_syntax_print_as_function = 1
let g:pymode_syntax_highlight_async_await = g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator = g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator = g:pymode_syntax_all
let g:pymode_syntax_highlight_self = g:pymode_syntax_all
"高亮缩进错误
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"高亮空格错误
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all
let g:pymode_syntax_builtin_types = g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all
let g:pymode_syntax_docstrings = g:pymode_syntax_all

" 警告
let g:pymode_warnings = 0

let g:pymode_options = 1
"保存文件时自动删除无用空格
let g:pymode_trim_whitespaces = 1

"开启python-mode定义的操作模式
let g:pymode_motion = 0

let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1

" 使用PEP8风格的缩进
let g:pymode_indent = 1

"启用python-mode内置的python文档，使用K进行查找
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'

"自动检测并启用virtualenv
let g:pymode_virtualenv = 1

" 运行python代码
let g:pymode_run = 1
let g:pymode_run_bind = '<Leader>r'

" 设置断点
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>br'

" 关闭代码折叠(python-mode 官方提示：处于试验阶段，有 bug)
let g:pymode_folding = 0

"显示允许的最大长度的列
let g:pymode_options_colorcolumn = 1

"设置QuickFix窗口的最大，最小高度
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 12

" 语法检查
let g:pymode_lint = 1

" 编辑时检查
let g:pymode_lint_on_fly = 1
" 保存时不检查
let g:pymode_lint_on_write = 0
let g:pymode_lint_message = 1
" QuickFix Error
let g:pymode_lint_cwindow = 1
" 检查工具
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_lint_sort = ['E', 'C', 'I']
" let g:pymode_lint_ignore = ["E501", "W",]
" let g:pymode_lint_select = ["E501", "W0011", "W430"]
" 侧边栏 Lint 标志
let g:pymode_lint_signs = 1
let g:pymode_lint_todo_symbol = 'TD'
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
" let g:pymode_rope_regenerate_on_write = 1

" 补全
" let g:pymode_rope_completion = 0
" let g:pymode_rope_complete_on_dot = 1
" let g:pymode_rope_completion_bind = '<C-Tab>'

" 跳转到定义处，同时新建竖直窗口打开
" let g:pymode_rope_goto_definition_bind = '<C-c>g'
" let g:pymode_rope_goto_definition_cmd = 'vnew'

" 重命名光标下的函数，方法，变量及类名
" let g:pymode_rope_rename_bind = '<C-c>rr'

" 重命名光标下的模块或包
" let g:pymode_rope_rename_module_bind = '<C-c>r1r'

" Plugin : vim-pythonsense --------------------

" Plugin : vim-flake8 -------------------------

" autocmd FileType python map <buffer> <Leader>cf :call flake8#Flake8()<CR>

" Plugin : jedi-vim ---------------------------

" Plugin : vim-flake8 -------------------------

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                   SQL                                     │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : SQHell
let g:sqh_connections = {
    \ 'default': {
    \   'database': $HOME.'db.sqlite3'
    \}
\ }

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                   VimL                                    │
" └───────────────────────────────────────────────────────────────────────────┘

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                           JavaScript JSON HTML CSS                        │
" └───────────────────────────────────────────────────────────────────────────┘

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                             Clipboard Yank                                │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : yankring -----------------

let g:yankring_dot_repeat_yank  = 1
let g:yankring_ignore_duplicate = 1
let g:yankring_share_between_instances = 1
let g:yankring_min_element_length = 2
let g:yankring_max_element_length = 4194304 " 4MB
let g:yankring_max_history = 1024

if !isdirectory("_vim/.files/yankring")
    call mkdir("_vim/.files/yankring", "p")
endif
let g:yankring_history_dir = $HOME.'/_vim/.files/yankring'

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                Comment                                    │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : nerdcommenter -----------------

let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" Plugin : tcomment -----------------

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                             Region Context                                │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : NrrRgn -----------------

" Plugin : contextfiletype_vim -----------------

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                            Find Search Jump                               │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : eregex -------------------------
nnoremap <leader>/ :call eregex#toggle()<CR>
" nnoremap / :M/
" nnoremap ? :M?
" nnoremap ,/ /
" nnoremap ,? /
" let g:eregex_force_case = 1

" Plugin: CtrlP ---------------------------
" path: root and current
let g:ctrlp_working_path_mode = 'ra'
" 1:follow symlinks but ignore looped internal symlinks to avoid duplicates.
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
\ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
" let g:ctrlp_user_command = 'find %s -type f'       " MacOSX/Linux
" let g:ctrlp_user_command =
" \ 'find %s -type f | grep -v -P "\.jpg$|/tmp/"'      " MacOSX/Linux
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/_vim/.files/ctrlp'
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'
let g:ctrlp_root_markers = [
    \ 'idea',
    \ '.git',
    \ '.vim',
    \ '.vscode',
    \ 'requirements.txt',
\ ]

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll|pyc)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
\ }

" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_custom_ignore = {
"     \ 'file': '\v(\.cpp|\.h|\.hh|\.cxx|\.pyc)@<!$'
" \ }
" let g:ctrlp_custom_ignore = {
"     \ 'func': 'some#custom#match_function'
"     \ }

" Plugin: Denite ---------------------------


" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>
        \ denite#do_map('do_action')
    nnoremap <silent><buffer><expr> d
        \ denite#do_map('do_action', 'delete')
    nnoremap <silent><buffer><expr> p
        \ denite#do_map('do_action', 'preview')
    nnoremap <silent><buffer><expr> q
        \ denite#do_map('quit')
    nnoremap <silent><buffer><expr> i
        \ denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> <Space>
        \ denite#do_map('toggle_select').'j'
endfunction


" Plugin : mru ----------------------------
" let MRU_File = '~/_vim/.files/vim_mru_files'

" Plugin : vim-fuzzyfinder ----------------
if !isdirectory("_vim/.files/vim-fuf-data")
    call mkdir("_vim/.files/vim-fuf-data", "p")
endif
let g:fuf_dataDir = '~/_vim/.files/vim-fuf-data'

" Plugin : vim-fuzzyfinders ---------------

" Plugin : vim-indentwise -----------------
" Jump on Indent " Higher level: Less Indent " Lower  level: More Indent
" Jump to Absolute Indent
map <Leader>jap <Plug>(IndentWisePreviousAbsoluteIndent)
map <Leader>jan <Plug>(IndentWiseNextAbsoluteIndent)
" Jump to Indent Block Begin/End(TextObject - Indent)
map <Leader>jba       <Plug>(IndentWiseBlockScopeBoundaryBegin)
map <Leader>jbe       <Plug>(IndentWiseBlockScopeBoundaryEnd)

" Jump to Next Indent
map <Leader>jj       <Plug>(IndentWiseNextEqualIndent)
map <Leader>jh  <Plug>(IndentWiseNextLesserIndent)
map <Leader>jl  <Plug>(IndentWiseNextGreaterIndent)
" Jump to Previous Indent
map <Leader>jbj       <Plug>(IndentWisePreviousEqualIndent)
map <Leader>jbk  <Plug>(IndentWisePreviousLesserIndent)
map <Leader>jbl  <Plug>(IndentWisePreviousGreaterIndent)





" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                  Fold                                     │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : FastFold -----------------------
let g:markdown_folding = 0

" Plugin : FoldText -----------------------
" set foldmethod=syntax

" { Syntax Folding
  let g:vimsyn_folding='af'
  let g:tex_fold_enabled=1
  let g:xml_syntax_folding = 1
  let g:clojure_fold = 1
  let ruby_fold = 1
  let perl_fold = 1
  let perl_fold_blocks = 1
" }

nnoremap <silent> zr zr:<c-u>setlocal foldlevel?<CR>
nnoremap <silent> zm zm:<c-u>setlocal foldlevel?<CR>

nnoremap <silent> zR zR:<c-u>setlocal foldlevel?<CR>
nnoremap <silent> zM zM:<c-u>setlocal foldlevel?<CR>

" Change Option Folds
nnoremap cfc :<c-u>call <SID>ToggleFoldcolumn(1)<CR>
nnoremap coz :<c-u>call <SID>ToggleFoldcolumn(0)<CR>
nmap     cof coz

function! s:ToggleFoldcolumn(fold)
    if &foldcolumn
        let w:foldcolumn = &foldcolumn
        silent setlocal foldcolumn=0
        if a:fold | silent setlocal nofoldenable | endif
    else
        if exists('w:foldcolumn') && (w:foldcolumn!=0)
            silent let &l:foldcolumn=w:foldcolumn
        else
            silent setlocal foldcolumn=4
        endif
        if a:fold | silent setlocal foldenable | endif
    endif
    setlocal foldcolumn?
endfunction

" Plugin : vim-vxfold ---------------------
" Plugin : vim-fold-cycle -----------------
" ┌───────────────────────────────────────────────────────────────────────────┐
" │                         Highlight Indent Syntax                           │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : rainbow -----------------
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'css': 0,
\ }
\ }

" Plugin : hi-Pairs ----------------------------

let g:hiPairs_enable_matchParen = 0
let g:hiPairs_timeout = 300
let g:hiPairs_insert_timeout = 300

" Plugin : vim-cursorword -----------------

let g:cursorword = 1

" Plugin : vim-illuminate -----------------

" highlight delay
let g:Illuminate_delay = 100
" use vim-cursorword instead of vim-illuminate
let g:Illuminate_highlightUnderCursor = 0
" let g:Illuminate_ftblacklist = [
"     \ 'nerdtree',
" \ ]
" highlight style
hi link illuminatedWord Visual
augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi link illuminatedWord CursorLine
augroup END



" Plugin : vim-highlightedyank -------

let g:highlightedyank_highlight_duration = 3600

"highlight HighlightedyankRegion ctermbg=237 guibg=#404040
highlight HighlightedyankRegion cterm=237 gui=#404040

" Plugin : Colorizer -----------------
let g:colorizer_auto_filetype='css,html'

" Plugin : engspchk -----------------
let g:spchkmouse   = 1
let g:spchkautonext= 1
let g:spchkdialect = "usa"

" load engspchk.dict
let g:spchklang= "eng"

" Plugin : indentLine -----------------

let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" 不在指定 buffer 中使用
let g:indentLine_bufTypeExclude = ['help', 'terminal']
" 不在含指定关键词的 buffer 中使用
let g:indentLine_bufNameExclude = ['_.*', 'NERD_tree.*']

" 不在指定文件格式中使用
let g:indentLine_fileTypeExclude = [
    \ 'help',
    \ 'markdown',
    \ 'text',
    \ 'sh',
\ ]

" 只在指定文件格式中使用
" let g:indentLine_fileType = [
"     \ 'c',
"     \ 'cpp',
"     \ 'javascript',
"     \ 'python',
"     \ 'vimscript',
" \ ]

" Plugin : indguide -----------------

hi default HL_IndGuide gui=none ctermfg=gray ctermbg=black guifg=gray guibg=black

" Plugin : vim-mark -----------------

" Plugin : interestingwords -----------------
" https://github.com/lfv89/vim-interestingwords



" Plugin : SyntaxAttr -----------------
nnoremap <Leader>fsy    :call SyntaxAttr#SyntaxAttr()<CR>

nnoremap <Leader>ssy :echo synstax#UnderCursor()<CR>

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                         Spell Thesaurus                                   │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : thesaurus_query -----------------
nnoremap <Leader>th :ThesaurusQueryReplaceCurrentWord<CR>
vnoremap <Leader>th y:ThesaurusQueryReplace <C-r>"<CR>
let g:tq_python_version=3
let g:tq_language=['en', 'cn']

let g:tq_cilin_txt_file=
    \"~/_vim/pack/misc/start/swy-ivim/thesaurus/cilin.txt"
let g:tq_mthesaur_file=
    \"~/_vim/pack/misc/start/swy-ivim/thesaurus/mthesaur.txt"
let g:tq_openoffice_en_file=
\"~/_vim/pack/misc/start/swy-ivim/thesaurus/MyThes-1.0/th_en_US_new"

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                              Complete                                     │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : UltiSnips -----------------
" " Vim default omnifunc keymap
" " inoremap <expr><cr>    pumvisible() ? "\<c-y>\<cr>" : "\<cr>"
" inoremap <expr><tab>   pumvisible() ? "\<c-n>" : "\<tab>"
" inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" " inoremap <expr><Space> pumvisible() ? "\<C-e>" : "\<Space>"

" " UltiSnips keymap
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<C-R>=UltiSnips#ExpandSnippet()"
" " let g:UltiSnipsExpandTrigger="<TAB>"
" let g:UltiSnipsJumpForwardTrigger="<TAB>"
" let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
" " 1
" " let g:UltiSnipsJumpForwardTrigger = "<c-j>"
" " let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
" " 2
" " let g:UltiSnipsExpandTrigger="<NOP>"
" " let g:UltiSnipsJumpForwardTrigger="<NOP>"
" " let g:UltiSnipsJumpBackwardTrigger="<NOP>"

" " Plugin : neocomplete -----------------
" " Use neocomplete.
" let g:neocomplete#enable_at_startup = 1

" " neocomplete keymap
" " <C-n> : next item in popup menu
" " <C-p> : previous item in popup menu
" " <C-h>, <BS>: close popup and delete backward char.
" inoremap <expr><C-g>    neocomplete#undo_completion()
" inoremap <expr><C-l>    neocomplete#complete_common_string()
" inoremap <expr><C-h>    neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS>     neocomplete#smart_close_popup()."\<C-h>"

" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1

" " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3

" " sources
" " if !exists('g:neocomplete#sources')
" "     let g:neocomplete#sources = {}
" " endif
" " let g:neocomplete#sources._ = ['buffer','dictionary']
" " let g:neocomplete#sources.python = ['buffer', 'dictionary']
" " let g:neocomplete#sources.cpp = ['buffer', 'dictionary']

" " sources - dictionary.
" let g:neocomplete#sources#dictionary#dictionaries = {
"     \ 'default' : '',
"     \ 'markdown' : $HOME.'/.vim/pack/misc/start/swy-ivim/dict/english.dict',
"     \ 'python' : $HOME.'/.vim/pack/misc/start/swy-ivim/dict/python.dict',
"     \ 'vimshell' : $HOME.'/.ivish_history',
"     \ 'scheme' : $HOME.'/.gosh_completions',
" \ }

" " sources - keyword.
" if !exists('g:neocomplete#keyword_patterns')
"     let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" " sources - omni completion.
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complet
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" " sources omni completion - heavy
" if !exists('g:neocomplete#sources#omni#input_patterns')
"     let g:neocomplete#sources#omni#input_patterns = {}
" endif
" let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" " Plugin : deoplete -----------------

" " let g:deoplete#enable_at_startup = 1
" " call deoplete#custom#option('smart_case', v:true)
" " inoremap <silent><expr> <TAB>
" " 	\ pumvisible() ? "\<C-n>" :
" " 	\ <SID>check_back_space() ? "\<TAB>" :
" " 	\ deoplete#manual_complete()
" " function! s:check_back_space() abort
" " 	let col = col('.') - 1
" " 	return !col || getline('.')[col - 1]  =~ '\s'
" " endfunction

" " inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" " function! s:my_cr_function() abort
" "     return deoplete#close_popup() . "\<CR>"
" " endfunction

" " inoremap <expr><C-h>
" " 	\ deoplete#smart_close_popup()."\<C-h>"
" " inoremap <expr><BS>
" " 	\ deoplete#smart_close_popup()."\<C-h>"

" Plugin: neocomplete ----------------------
let g:neocomplete#enable_at_startup = 1

" sources - omni complete
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
" autocmd Filetype tex let g:neocomplete#sources#omni#input_patterns.tex =
" \ '\v\\\a*(ref|cite)\a*([^]]*\])?\{([^}]*,)*[^}]*'

let g:neocomplete#sources#omni#input_patterns.tex =
        \ g:vimtex#re#neocomplete

" sources - dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : $HOME.'/.vim/pack/misc/start/swy-ivim/dict/frequent.dict',
    \ 'markdown' : $HOME.'/.vim/pack/misc/start/swy-ivim/dict/frequent.dict',
    \ 'python' : $HOME.'/.vim/pack/misc/start/swy-ivim/dict/python.dict',
    \ 'vim' : $HOME.'/.vim/pack/misc/start/swy-ivim/dict/vim.dict',
    \ 'vimshell' : $HOME.'/.ivish_history',
    \ 'scheme' : $HOME.'/.gosh_completions',
\ }

" Plugin: UltiSnips ----------------------
" inoremap <TAB> {{{1
" Next menu item, expand snippet, jump to next placeholder or insert literal tab
let g:UltiSnipsJumpForwardTrigger="<NOP>"
let g:ulti_expand_or_jump_res = 0
function! ExpandSnippetOrJumpForwardOrReturnTab()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<TAB>"
    endif
endfunction
inoremap <expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ "<C-R>=ExpandSnippetOrJumpForwardOrReturnTab()<CR>"
" snoremap <TAB> {{{1
" jump to next placeholder otherwise do nothing
snoremap <buffer> <silent> <TAB>
    \ <ESC>:call UltiSnips#JumpForwards()<CR>

" inoremap <S-TAB> {{{1
" previous menu item, jump to previous placeholder or do nothing
let g:UltiSnipsJumpBackwordTrigger = "<NOP>"
inoremap <expr> <S-TAB>
    \ pumvisible() ? "\<C-p>" :
    \ "<C-R>=UltiSnips#JumpBackwards()<CR>"

" snoremap <S-TAB> {{{1
" jump to previous placeholder otherwise do nothing
snoremap <buffer> <silent> <S-TAB>
    \ <ESC>:call UltiSnips#JumpBackwards()<CR>

" inoremap <CR> {{{1
" expand snippet, close menu or insert newline
let g:UltiSnipsExpandTrigger = "<NOP>"
let g:ulti_expand_or_jump_res = 0
inoremap <silent> <CR> <C-r>=<SID>ExpandSnippetOrReturnEmptyString()<CR>
function! s:ExpandSnippetOrReturnEmptyString()
    if pumvisible()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<C-y>\<CR>"
    endif
    else
        return "\<CR>"
endfunction

" inoremap <C-h> {{{1
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"

" inoremap <BS> {{{1
inoremap <expr><BS>  neocomplete#smart_close_popup()."\<C-h>"

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                   Explore                                 │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : nerdtree -----------------

let g:NERDTreeHijackNetrw=0
" autocmd vimenter * NERDTree
nnoremap <Leader>nt :NERDTreeToggle<CR>
let g:NERDTreeMapOpenVSplit = "<NOP>"

let g:NERDTreeDirArrows           = 1
let g:NERDTreeDirArrowExpandable  = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeShowHidden          = 1
let g:NERDTreeBookmarksFile       = 1
let g:NERDTreeShowBookmarks       = 1
let g:NERDTreeShowFiles           = 1
let g:NERDTreeShowLineNumbers     = 1
let g:NERDTreeWinSize             = 30

"鼠标点击
let g:NERDTreeMouseMode = 2
" 不自动显示帮助信息
let g:NERDTreeMinimalUI           = 1
" 忽略以下文件的显示
let g:NERDTreeIgnore              = [
    \ '.*\.class',
    \ '.*\.pyc',
    \ '\.swp',
    \ '__pycache__',
    \ '.*\.chm',
    \ '.*\.ttf',
    \ '.*\.lnk',
    \ '.*\.cproj',
    \ '.*\.exe',
    \ '.*\.dll',
    \ '.*\.out',
    \ '.*\.files',
    \ '.*\.zip',
    \ '.*\.rar',
    \ '.*\.gif',
    \ '\.git$',
    \ '\.DS_Store',
\ ]

let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ "Unknown"   : "?"
\ }

" let g:NERDTreeNodeDelimiter       = "\u00a0"
let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['bat'        ] =  'ff8b52'
let g:NERDTreeExtensionHighlightColor['class'      ] =  '80cbc4'
let g:NERDTreeExtensionHighlightColor['conf'       ] =  '8cffba'
let g:NERDTreeExtensionHighlightColor['css'        ] =  'ffcde6'
let g:NERDTreeExtensionHighlightColor['deb'        ] =  'FFB340'
let g:NERDTreeExtensionHighlightColor['odt'        ] =  '7FFF00'
let g:NERDTreeExtensionHighlightColor['doc'        ] =  '7FFF00'
let g:NERDTreeExtensionHighlightColor['docx'       ] =  '7FFF00'
let g:NERDTreeExtensionHighlightColor['dtd'        ] =  'ff2c4b'
let g:NERDTreeExtensionHighlightColor['ear'        ] =  'FFB340'
let g:NERDTreeExtensionHighlightColor['fxml'       ] =  'ff2c4b'
let g:NERDTreeExtensionHighlightColor['frxml'      ] =  'ff2c4b'
let g:NERDTreeExtensionHighlightColor['gif'        ] =  'F5C06F'
let g:NERDTreeExtensionHighlightColor['gradle'     ] =  '00c489'
let g:NERDTreeExtensionHighlightColor['groovy'     ] =  '4298b8'
let g:NERDTreeExtensionHighlightColor['gz'         ] =  'FFB340'
let g:NERDTreeExtensionHighlightColor['html'       ] =  '85FF66'
let g:NERDTreeExtensionHighlightColor['iml'        ] =  'AD8FCC'
let g:NERDTreeExtensionHighlightColor['jar'        ] =  'FFB340'
let g:NERDTreeExtensionHighlightColor['java'       ] =  '80cbc4'
let g:NERDTreeExtensionHighlightColor['jnlp'       ] =  'ad8fcc'
let g:NERDTreeExtensionHighlightColor['jpeg'       ] =  'F5C06F'
let g:NERDTreeExtensionHighlightColor['jpg'        ] =  'F5C06F'
let g:NERDTreeExtensionHighlightColor['js'         ] =  'ffa500'
let g:NERDTreeExtensionHighlightColor['lock'       ] =  'FFFF00'
let g:NERDTreeExtensionHighlightColor['markdown'   ] =  'B973FF'
let g:NERDTreeExtensionHighlightColor['md'         ] =  'B973FF'
let g:NERDTreeExtensionHighlightColor['mkd'        ] =  'B973FF'
let g:NERDTreeExtensionHighlightColor['php'        ] =  'ff00ff'
let g:NERDTreeExtensionHighlightColor['png'        ] =  'F5C06F'
let g:NERDTreeExtensionHighlightColor['properties' ] =  '8cffba'
let g:NERDTreeExtensionHighlightColor['py'         ] =  '70d080'
let g:NERDTreeExtensionHighlightColor['rar'        ] =  'FFB340'
let g:NERDTreeExtensionHighlightColor['rpm'        ] =  'FFB340'
let g:NERDTreeExtensionHighlightColor['rs'         ] =  'FF7033'
let g:NERDTreeExtensionHighlightColor['rst'        ] =  'B973FF'
let g:NERDTreeExtensionHighlightColor['sql'        ] =  '66A3FF'
let g:NERDTreeExtensionHighlightColor['tags'       ] =  'ff6070'
let g:NERDTreeExtensionHighlightColor['ttf'        ] =  'd0eeff'
let g:NERDTreeExtensionHighlightColor['txt'        ] =  'ffffff'
let g:NERDTreeExtensionHighlightColor['vim'        ] =  'afd700'
let g:NERDTreeExtensionHighlightColor['war'        ] =  'FFB340'
let g:NERDTreeExtensionHighlightColor['xml'        ] =  'ff2c4b'
let g:NERDTreeExtensionHighlightColor['xls'        ] =  'ffff7d'
let g:NERDTreeExtensionHighlightColor['xlsx'       ] =  'ffff7d'
let g:NERDTreeExtensionHighlightColor['xsd'        ] =  'ff2c4b'
let g:NERDTreeExtensionHighlightColor['yaml'       ] =  'c8c8c8'
let g:NERDTreeExtensionHighlightColor['yml'        ] =  'c8c8c8'
let g:NERDTreeExtensionHighlightColor['zip'        ] =  'FFB340'

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                   Key                                     │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : do.vim -------------------------

let g:vimdo_use_default_commands = 1
let g:vimdo_default_prefix = 'do'
let g:vimdo_interactive = 1
let g:vimdo_show_filename = 1

" nnoremap doft  :call do#cmd#open_ftplugin()<cr>
" nnoremap dofT  :call do#cmd#open_ftplugin(1)<cr>
" nnoremap dosn  :call do#cmd#snippets()<cr>
" nnoremap dorf  :call do#cmd#reindent_file()<cr>
" nnoremap docf  :call do#cmd#copy_file()<cr>
" nnoremap dodo  :call do#diff#other()<cr>
" nnoremap dods  :call do#diff#saved()<cr>
" nnoremap dout  :call do#cmd#update_tags()<cr>
" nnoremap dovp  :call do#cmd#profiling()<cr>
" nnoremap dofcr :call do#cmd#find_crlf(1, "")<cr>
" nnoremap dossa :call do#cmd#syntax_attr()<cr>
" nnoremap doec  :call do#color#echo()<cr>

" Plugin : vim-which-key -----------------

let g:mapleader = "\<Space>"
let g:which_key_exit = "\<Space>"

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
" nnoremap <silent> <localleader> :WhichKey ','<CR>

nnoremap <Leader>a<Tab> :echom "Hello, World"<cr>
nnoremap <Leader>1 :echom "THis is one"<cr>

let g:which_key_timeout = 300
let g:which_key_sep = '➡️'
let g:which_key_hspace = 5
let g:which_key_flatten = 1
let g:which_key_max_size = 50

let g:which_key_sort_horizontal = 1
let g:which_key_use_floating_win=1

let g:which_key_align_by_seperator = 1
let g:which_key_fallback_to_native_key=0
let g:which_key_floating_opts={'col':'-3'}
let g:which_key_run_map_on_popup = 1
let g:which_key_disable_default_offset = 1
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}
let g:WhichKeyFormatFunc = function('which_key#format')

highlight default link WhichKeyFloating  Pmenu
highlight default link WhichKey          Function
highlight default link WhichKeySeperator DiffAdded
" highlight default link WhichKeyGroup     Keyword
highlight default link WhichKeyGroup     Error
highlight default link WhichKeyDesc      Identifier

"highlight WhichKeyFloating IncSearch
"\ ctermbg=DarkBlue  ctermfg=Green
"\ guibg=DarkBlue guifg=Mengenta

" statusline
"autocmd! FileType which_key
"autocmd  FileType which_key set laststatus=0 noshowmode noruler
"\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" Plugin : supertab -----------------

" Plugin : vim-clevertab -----------------

" inoremap <silent><tab> <c-r>=CleverTab#Complete('start')<cr>
"                           \<c-r>=CleverTab#Complete('tab')<cr>
"                           \<c-r>=CleverTab#Complete('ultisnips')<cr>
"                           \<c-r>=CleverTab#Complete('keyword')<cr>
"                           \<c-r>=CleverTab#Complete('neocomplete')<cr>
"                           \<c-r>=CleverTab#Complete('omni')<cr>
"                           \<c-r>=CleverTab#Complete('stop')<cr>
"                           inoremap <silent><s-tab> <c-r>=CleverTab#Complete('prev')<cr>


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                 Operator                                  │
" └───────────────────────────────────────────────────────────────────────────┘



" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                  Motion                                   │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : vim-easymotion -----------------

let g:EasyMotion_smartcase = 1
let g:EasyMotion_keys =
\   'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'

" Plugin : vim-easymotion-chs -------------




" ┌───────────────────────────────────────────────────────────────────────────┐
" │                            FileType Transfer                              │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : jupytext --------------------

let g:jupytext_enable = 1
let g:jupytext_fmt = 'markdown'
let g:jupytext_command = 'jupytext'
let g:jupytext_filetype_map = {'md':'markdown'}
let g:jupytext_print_debug_msgs = 1
let g:jupytext_to_ipynb_opts = '--to=ipynb --update'

" Plugin : vim-pandoc ---------------

let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0

" let g:pandoc#modules#enabled = [
"    \ "formatting", "folding", "bibliographies",
"    \ "completion","metadata", "menu",
"    \ "executors", "keyboard", "toc", "spell", "hypertext"
" \ ]
let g:pandoc#modules#disabled = ["folding"]

" let g:pandoc#command#autoexec_command = "Pandoc! pdf"

let g:pandoc#after#modules#enabled = ["nrrwrgn", "ultisnips"]

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.pandoc = '@'


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                            FileType LaTeX                                 │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : vim-latex -------------------


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                            FileType Markdown                              │
" └───────────────────────────────────────────────────────────────────────────┘



" Plugin : vim-markdown ---------------

let g:vim_markdown_auto_extension_ext = 'txt'

let g:vim_markdown_folding_disabled = 1
" let g:vim_markdown_folding_style_pythonic = 1
autocmd FileType markdown setlocal conceallevel=2
let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_fenced_languages =
    \ [
    \ 'csharp=cs',
    \ 'c++=cpp',
    \ 'python=python',
    \ 'viml=viml',
    \ 'bash=sh',
    \ 'shell=sh',
    \ 'ini=dosini',
\ ]
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1 " requires vim-json
let g:vim_markdown_no_extensions_in_markdown = 1

let g:vim_markdown_toc_autofit = 1

let g:vim_markdown_auto_insert_bullets = 1

let g:vim_markdown_new_list_item_indent = 1

let g:vim_markdown_edit_url_in = 'tab'



" ┌───────────────────────────────────────────────────────────────────────────┐
" │                               FileType other                              │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin :  ----------------
" Plugin :  ----------------
" Plugin :  ----------------
" Plugin :  ----------------

" Plugin : vimwiki ----------------
" vimwiki sucks because it conflicts woth other fold&syntax plugins

" nnoremap <Leader>wki     <Plug>VimwikiIndex
" nnoremap <Leader>wkti    <Plug>VimwikiTabIndex
" nnoremap <Leader>wkui    <Plug>VimwikiUISelect
" nnoremap <Leader>wkdi    <Plug>VimwikiDiaryIndex
" " let g:vimwiki_filetypes = ['markdown','pandoc']
" let g:vimwiki_filetypes = []
" let g:vimwiki_folding = ''
"
" let g:vimwiki_ext2syntax = {
"     \ '.wiki':'media',
" }

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                           UI: Font Theme ……                               │
" └───────────────────────────────────────────────────────────────────────────┘

" Plugin : randomTheme----------

let g:random_theme_start = 0

let g:favorite_gui_fonts = [
            \ 'Courier:h15',
            \ 'Menlo:h15',
            \ 'Monaco:h15',
            \ 'Fira\ Code:h15',
            \ 'Cascadia\ Code:h15',
            \ 'Ubuntu\ Mono:h15',
            \ 'Inconsolata:h15',
            \ 'Source\ Code\ Variable:h15',
            \ 'JetBrains\ Mono:h15',
            \ 'Consolas:h15',
            \ 'YaHeiConsolasIconHybrid:h13'
\ ]
"

" Plugin : limelight ----------

" Toggle Limelight
nnoremap <leader>L :Limelight!!<cr>

let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Plugin : vim-airline-----------

" let g:airline#extensions#default#layout = [
"     \ [ 'a', 'b', 'c'],
"     \ [ 'x', 'y', 'z'],
" \ ]
" let g:airline#extensions#default#section_truncate_width = {
"       \ 'a': 1,
"       \ 'b': 10,
"       \ 'x': 20,
"       \ 'y': 20,
"       \ 'z': 20,
"       \ 'warning': 20,
"       \ 'error': 20,
" \ }

" "let g:airline_section_a       (mode, crypt, paste, spell, iminsert)
" let g:airline_mode_map = {
"     \ '__'     : '-',
"     \ 'c'      : 'CMD',
"     \ 'i'      : 'Insert',
"     \ 'ic'     : 'I-C',
"     \ 'ix'     : 'I-X',
"     \ 'n'      : 'Normal',
"     \ 'multi'  : 'M',
"     \ 'ni'     : 'N',
"     \ 'no'     : 'N',
"     \ 'R'      : 'Replace',
"     \ 'Rv'     : 'R-V',
"     \ 's'      : 'S',
"     \ 'S'      : 'S',
"     \ ''     : 'S',
"     \ 't'      : 'Terminal',
"     \ 'v'      : 'V',
"     \ 'V'      : 'V-Line',
"     \ ''     : 'V',
" \ }

" " let g:airline_section_b       (hunks, branch) " vim-fugitive needed
" " let g:airline_section_b = '[-b-]'

" "let g:airline_section_c       (bufferline or filename, readonly)

" let g:airline_section_c = '[[0x%B]]'

" "let g:airline_section_x       (tagbar, filetype, virtualenv)

" " let g:airline_section_x = '[-x-]'

" let g:airline_filetype_overrides = {
"     \ 'help':  [ 'Help', '%f' ],
"     \ 'vimshell': ['vimshell','%{vimshell#get_status_string()}'],
"     \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
" \ }
"     " \ 'defx':  ['defx', '%{b:defx.paths[0]}'],
"     " \ 'gundo': [ 'Gundo', '' ],
"     " \ 'minibufexpl': [ 'MiniBufExplorer', '' ],
"     " \ 'startify': [ 'startify', '' ],
"     " \ 'vim-plug': [ 'Plugins', '' ],
"     " \ 'vimfiler': [ 'vimfiler', '%{vimfiler#get_status_string()}' ],

" let g:airline#extensions#wordcount#filetypes = [
"     \ 'asciidoc',
"     \ 'help',
"     \ 'mail',
"     \ 'markdown',
"     \ 'org',
"     \ 'python',
"     \ 'plaintext',
"     \ 'rst',
"     \ 'tex',
"     \ 'text',
" \ ]

" " let g:airline_section_y       (fileencoding, fileformat)
" " let g:airline_section_y = '[-y-]'

" "let g:airline_section_z       (percentage, line number, column number)

" " let g:airline_section_z = '[%cC[%l(%p%%):%LL]]'

" "let g:airline_section_error   (ycm_error_count, syntastic-err, eclim,
" "                                 languageclient_error_count)
" "let g:airline_section_warning (ycm_warning_count, syntastic-warn,
" "languageclient_warning_count, whitespace)

" " let g:airline_extensions = [
" "     \ '',
" "     \ ]

" let g:airline#extensions#branch#format = 2
" let g:airline#extensions#branch#displayed_head_limit = 10

" "let g:airline_section_gutter  (csv)

" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif

" " let g:airline_left_sep  = '▶'
" let g:airline_left_sep  = '¦'
" let g:airline_right_sep = '◀'
" " let g:airline_right_sep = '¦'

" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#alt_sep = 1
" let g:airline#extensions#tabline#buffer_idx_mode = 1
" " splits and tab number
" let g:airline#extensions#tabline#tab_nr_type = 2
" let g:airline#extensions#tabline#left_sep = ' '
" " let g:airline#extensions#tabline#left_sep = '▶'
" let g:airline#extensions#tabline#left_alt_sep = '¦'
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''

" let g:airline#extensions#wordcount#formatter = 'default'
" let g:airline#extensions#wordcount#formatter#default#fmt = '%sWords'
" let g:airline#extensions#wordcount#formatter#default#fmt_short = '%sW'

" let g:airline#extensions#bookmark#enabled = 0
" let g:airline#extensions#keymap#enabled = 1

" let g:airline#extensions#nrrwrgn#enabled = 1

" "function! WindowNumber(...)
"     "let builder = a:1
"     "let context = a:2
"     "call builder.add_section('airline_b', '%{tabpagewinnr(tabpagenr())}')
"     "return 0
" "endfunction

" "call airline#add_statusline_func('WindowNumber')
" "call airline#add_inactive_statusline_func('WindowNumber')

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                    MISC                                   │
" └───────────────────────────────────────────────────────────────────────────┘
" swy-ivim
set guifont=YaHei\ Consolas\ Icon\ Hybrid:h15

" Plugin : vim-timetap -----------------
if !isdirectory("_vim/.files/timetap")
    call mkdir("_vim/.files/timetap", "p")
endif
let g:timetap_data_dir = $HOME.'/_vim/.files/timetap'

" Plugin : BufTimer -----------------

let g:buftimer_map = "<leader>bt"

let g:buftimer_report_map = "<leader>br"

let g:buf_report_autosave_periodic = 500

if !isdirectory("_vim/.files/BufTimerLog")
    call mkdir("_vim/.files/BufTimerLog", "p")
endif
let g:buf_report_autosave_dir = $HOME."/_vim/.files/BufTimerLog"

" Plugin : Tabular -----------------

" Plugin : vim-table-mode -----------------

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                 Old Config                                │
" └───────────────────────────────────────────────────────────────────────────┘

"" for fpath in split(globpath('~/_vim/_rc/*/', '*.vim'), '\n')
"     execute 'source' fpath
" endfor
