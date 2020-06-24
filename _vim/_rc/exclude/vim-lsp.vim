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



" fold
let g:lsp_fold_enabled = 0
" set foldmethod=expr
" \ foldexpr=lsp#ui#vim#folding#foldexpr()
" \ foldtext=lsp#ui#vim#folding#foldtext()





" Diagnostics(Lint(warnings,errors…))
let g:lsp_diagnostics_enabled = 0
" let g:lsp_signs_enabled = 1
" let g:lsp_diagnostics_echo_cursor = 1
" let g:lsp_signs_error = {'text': '✗'}
" let g:lsp_signs_warning = {'text': '‼', 'icon': '/path/to/some/icon'} " icons require GUI
" let g:lsp_signs_hint = {'icon': '/path/to/some/other/icon'}
" highlight link LspErrorText GruvboxRedSign " requires gruvbox
" highlight clear LspWarningLine
" let g:lsp_highlights_enabled = 0
" let g:lsp_textprop_enabled = 0
" let g:lsp_highlight_references_enabled = 1
" highlight lspReference ctermfg=red guifg=red ctermbg=green guibg=green

