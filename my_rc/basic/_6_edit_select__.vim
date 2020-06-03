"粘贴不换行问题的解决方法
"set pastetoggle=<F9>

"✅ 计时--------------------------------------------------------------------

" 默认超时 1000 ms
set timeoutlen=700
" key codes 超时
set ttimeoutlen=20
" Idle time to write swap and trigger CursorHold
set updatetime=100
" Time in milliseconds for stopping display redraw
set redrawtime=1500

"✅ 系统剪贴板-----------------------------------------------------------------
if has('mac')
    let g:clipboard = {
        \   'name': 'macOS-clipboard',
        \   'copy': {
        \      '+': 'pbcopy',
        \      '*': 'pbcopy',
        \    },
        \   'paste': {
        \      '+': 'pbpaste',
        \      '*': 'pbpaste',
        \   },
        \   'cache_enabled': 0,
        \ }
endif

"❌ set clipboard

"✅
set clipboard=unnamedplus

"⚠️--------------------------------------------------------------------

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    keepp %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python
    \ autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
    "apply this on save to any file
    "\ autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

