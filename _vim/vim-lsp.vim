" dependencies
" async.vim
" vim-lsp-settings



" Registering servers
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> <f2> <plug>(lsp-rename)
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END


" compelte service
" asyncomplete



" compelte snippets
" vim-vsnip  & vim-vsnip-integ
" UltiSnips  & vim-lsp--settings
" neosnippet & vim-lsp-neosnippet


"  Folding




"  Semantic highlighting







"  Diagnostics (Lint Debug ...)
"  ale
"  neomake








