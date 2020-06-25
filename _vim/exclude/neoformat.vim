let g:neoformat_python_autopep8 = {
            \ 'exe': 'autopep8',
            \ 'args': ['-s 4', '-E'],
            \ 'replace': 1 " replace the file, instead of updating buffer (default: 0),
            \ 'stdin': 1, " send data to stdin of formatter (default: 0)
            \ 'env': ["DEBUG=1"], " prepend environment variables to formatter command
            \ 'valid_exit_codes': [0, 23],
            \ 'no_append': 1,
            \ }

            let g:neoformat_enabled_python = ['autopep8']

let g:neoformat_enabled_python = ['autopep8', 'yapf']

" 让 undo 忽略 neoformat 对文件的改变
" augroup fmt
"     autocmd!
"     autocmd BufWritePre * undojoin | Neoformat
" augroup END