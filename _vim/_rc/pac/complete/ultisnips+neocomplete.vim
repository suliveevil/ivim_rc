" Vim default omnifunc keymap
" inoremap <expr><cr>    pumvisible() ? "\<c-y>\<cr>" : "\<cr>"
" inoremap <expr><tab>   pumvisible() ? "\<c-n>" : "\<tab>"
" inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" inoremap <expr><Space> pumvisible() ? "\<C-e>" : "\<Space>"


" UltiSnips keymap
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
" 1
" let g:UltiSnipsJumpForwardTrigger = "<c-j>"
" let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
" 2
" let g:UltiSnipsJumpForwardTrigger="<NOP>"
" let g:UltiSnipsJumpBackwardTrigger="<NOP>"


" neocomplete keymap
" <C-n> : next item in popup menu
" <C-p> : previous item in popup menu
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"



" Use neocomplete.
let g:neocomplete#enable_at_startup = 1

" Use smartcase.
let g:neocomplete#enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" sources
if !exists('g:neocomplete#sources')
    let g:neocomplete#sources = {}
endif
" let g:neocomplete#sources._ = ['buffer','dictionary']
" let g:neocomplete#sources.python = ['buffer', 'dictionary']
" let g:neocomplete#sources.cpp = ['buffer', 'dictionary']





" sources - dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'markdown' : $HOME.'/.vim/pack/misc/start/swy-ivim/dict/english.dict',
    \ 'python' : $HOME.'/.vim/pack/misc/start/swy-ivim/dict/python.dict',
    \ 'vimshell' : $HOME.'/.ivish_history',
    \ 'scheme' : $HOME.'/.gosh_completions',
    \ }




" sources - keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'




" sources - omni completion.
autocmd FileType python setlocal omnifunc=pythoncomplete#Complet

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS

autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags



" sources omni completion - heavy
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
