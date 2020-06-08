let g:asyncomplete_auto_completeopt = 0

set completeopt=menuone,noinsert,noselect,preview

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"


if executable('pyls')
    " pip install pyls
    " i.e.        python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif