
let g:mapleader = "\<Space>"
let g:which_key_exit = "\<Space>"

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
" nnoremap <silent> <localleader> :WhichKey ','<CR>

nnoremap <Leader>a<Tab> :echom "Hello, World"<cr>
nnoremap <Leader>1 :echom "THis is one"<cr>











let g:which_key_timeout = 300
let g:which_key_sep = '➡️'
let g:which_key_hspace = 5
let g:which_key_flatten = 1
let g:which_key_max_size = 50

let g:which_key_sort_horizontal = 1
let g:which_key_use_floating_win=1

let g:which_key_align_by_seperator = 1
let g:which_key_fallback_to_native_key=0
let g:which_key_floating_opts={'col':'-3'}
let g:which_key_run_map_on_popup = 1
let g:which_key_disable_default_offset = 1
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}
let g:WhichKeyFormatFunc = function('which_key#format')


highlight default link WhichKey          Function
highlight default link WhichKeySeperator DiffAdded
"highlight default link WhichKeyGroup     Keyword
highlight default link WhichKeyGroup     Error
highlight default link WhichKeyDesc      Identifier

highlight Pmenu guibg=DarkBlue gui=Green ctermbg=DarkBlue ctermfg=Green
highlight default link WhichKeyFloating  Pmenu
"highlight WhichKeyFloating IncSearch
"\ ctermbg=DarkBlue  ctermfg=Green
"\ guibg=DarkBlue guifg=Mengenta


" statusline
"autocmd! FileType which_key
"autocmd  FileType which_key set laststatus=0 noshowmode noruler
"\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

