" 智能关闭弹窗
inoremap <expr><C-h>   neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS>    neocomplete#smart_close_popup()."\<C-h>"



" 选择：智能 TAB
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
"     \ <SID>check_back_space() ? "\<TAB>" :
"     \ neocomplete#start_manual_complete()

" function! s:check_back_space()
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~ '\s'
" endfunction

" 关闭补全菜单，保存缩进 <CR>
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"     return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
"     " For no inserting <CR> key.
"     return pumvisible() ? "\<C-y>" : "\<CR>"
" endfunction

" " 补全 <TAB>
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ neocomplete#start_manual_complete()
" function! s:check_back_space() abort "{{{
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction"}}}

" 确认选择
" inoremap <expr><CR> pumvisible()? "\<C-y>" : "\<CR>"

" 取消
" inoremap <expr><C-g>     neocomplete#undo_completion()

" 取消，保留已输入字符
" inoremap <expr><C-l>     neocomplete#complete_common_string()

" 取消补全弹窗
" inoremap <expr><C-e>   neocomplete#cancel_popup()

" 关闭弹窗
" inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"





let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_camel_case = 1
let g:neocomplete#enable_fuzzy_completion = 1
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#sources#syntax#min_keyword_length = 1
" AutoComplPop 类似
"let g:neocomplete#enable_auto_select   = 0
let g:neocomplete#enable_refresh_always = 1
" g:neocomplete#keyword_patterns
let g:neocomplete#enable_multibyte_completion = 1

" g:neocomplete#sources


" 自定义词典补全
" let g:neocomplete#data_directory = '~/.vim/pack/ivim/start/ivim-snippets/dict'
let  g:neocomplete#sources#dictionary#dictionaries = {
    \ '_'        :'~/.vim/pack/ivim/start/ivim-snippets/dict/all.dict',
    \ 'default'  : '',
    \ 'python'   :'~/.vim/pack/ivim/start/ivim-snippets/dict/python.dict',
    \ }

" 关键词补全
" if !exists('g:neocomplete#keyword_patterns')
"     let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" omni 补全
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" omni 更多补全
" if !exists('g:neocomplete#sources#omni#input_patterns')
"     let g:neocomplete#sources#omni#input_patterns = {}
" endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

highlight Pmenu ctermbg=8 guibg=#606060
highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6
