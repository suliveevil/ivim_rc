if !exists('g:context_filetype#filetypes')
	let g:context_filetype#filetypes = {}
endif


" let g:context_filetype#filetypes.perl6 = [{
"     \ 'filetype' : 'pir',
"     \ 'start' : 'Q:PIR\s*{', 'end' : '}'
" \ }]

" context filetype
let g:context_filetype#filetypes.org = [{
    \ 'filetype' : 'python',
	\ 'start' : '^#\+BEGIN_SRC\spython',
    \ 'end' : '^#\+END_SRC'
\ }]