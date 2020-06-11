let g:asyncomplete_auto_popup=1
let g:asyncomplete_auto_completeopt = 0


inoremap <expr> <CR>    pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" set completeopt=menuone,noinsert,noselect,preview
set completeopt=menuone,noinsert,noselect,popup
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


" UltiSnips
call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'whitelist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))
endif

" omni
call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
\ 'name': 'omni',
\ 'whitelist': ['*'],
" \ 'blacklist': ['c', 'cpp', 'html'],
\ 'completor': function('asyncomplete#sources#omni#completor')
\  }))

if executable('pyls')
    " pip install pyls(python-language-server)
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif


