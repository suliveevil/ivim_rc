
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
"     \ ]


