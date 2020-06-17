


let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c'],
    \ [ 'x', 'y', 'z'],
    \ ]
let g:airline#extensions#default#section_truncate_width = {
      \ 'a': 1,
      \ 'b': 10,
      \ 'x': 20,
      \ 'y': 20,
      \ 'z': 20,
      \ 'warning': 20,
      \ 'error': 20,
      \ }

"let g:airline_section_a       (mode, crypt, paste, spell, iminsert)
let g:airline_mode_map = {
    \ '__'     : '-',
    \ 'c'      : 'CMD',
    \ 'i'      : 'Insert',
    \ 'ic'     : 'I-C',
    \ 'ix'     : 'I-X',
    \ 'n'      : 'Normal',
    \ 'multi'  : 'M',
    \ 'ni'     : 'N',
    \ 'no'     : 'N',
    \ 'R'      : 'Replace',
    \ 'Rv'     : 'R-V',
    \ 's'      : 'S',
    \ 'S'      : 'S',
    \ ''     : 'S',
    \ 't'      : 'Terminal',
    \ 'v'      : 'V',
    \ 'V'      : 'V-Line',
    \ ''     : 'V',
    \ }


" let g:airline_section_b       (hunks, branch) " vim-fugitive needed
" let g:airline_section_b = '[-b-]'



"let g:airline_section_c       (bufferline or filename, readonly)

let g:airline_section_c = '[[0x%B]]'










"let g:airline_section_x       (tagbar, filetype, virtualenv)

" let g:airline_section_x = '[-x-]'






let g:airline_filetype_overrides = {
    \ 'help':  [ 'Help', '%f' ],
    \ 'vimshell': ['vimshell','%{vimshell#get_status_string()}'],
    \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
    \ }
    " \ 'defx':  ['defx', '%{b:defx.paths[0]}'],
    " \ 'gundo': [ 'Gundo', '' ],
    " \ 'minibufexpl': [ 'MiniBufExplorer', '' ],
    " \ 'startify': [ 'startify', '' ],
    " \ 'vim-plug': [ 'Plugins', '' ],
    " \ 'vimfiler': [ 'vimfiler', '%{vimfiler#get_status_string()}' ],



let g:airline#extensions#wordcount#filetypes = [
    \ 'asciidoc',
    \ 'help',
    \ 'mail',
    \ 'markdown',
    \ 'org',
    \ 'python',
    \ 'plaintex',
    \ 'rst',
    \ 'tex',
    \ 'text',
    \ ]




" let g:airline_section_y       (fileencoding, fileformat)
" let g:airline_section_y = '[-y-]'

"let g:airline_section_z       (percentage, line number, column number)

" let g:airline_section_z = '[%cC[%l(%p%%):%LL]]'



"let g:airline_section_error   (ycm_error_count, syntastic-err, eclim,
"                                 languageclient_error_count)
"let g:airline_section_warning (ycm_warning_count, syntastic-warn,
"languageclient_warning_count, whitespace)

" let g:airline_extensions = [
"     \ '',
"     \ ]




let g:airline#extensions#branch#format = 2
let g:airline#extensions#branch#displayed_head_limit = 10





"let g:airline_section_gutter  (csv)




if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" let g:airline_left_sep  = '▶'
let g:airline_left_sep  = '¦'
let g:airline_right_sep = '◀'
" let g:airline_right_sep = '¦'



let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#alt_sep = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
" splits and tab number
let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#left_alt_sep = '¦'
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline#extensions#wordcount#formatter = 'default'
let g:airline#extensions#wordcount#formatter#default#fmt = '%sWords'
let g:airline#extensions#wordcount#formatter#default#fmt_short = '%sW'



let g:airline#extensions#bookmark#enabled = 0
let g:airline#extensions#keymap#enabled = 1

let g:airline#extensions#nrrwrgn#enabled = 1

"function! WindowNumber(...)
    "let builder = a:1
    "let context = a:2
    "call builder.add_section('airline_b', '%{tabpagewinnr(tabpagenr())}')
    "return 0
"endfunction

"call airline#add_statusline_func('WindowNumber')
"call airline#add_inactive_statusline_func('WindowNumber')
