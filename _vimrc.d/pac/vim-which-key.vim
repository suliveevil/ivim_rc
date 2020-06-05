
let g:which_key_exit = "\<Space>"


let g:which_key_timeout = 300
let g:which_key_sep = '➡️'
let g:which_key_flatten = 1
let g:which_key_max_size = 50
let g:which_key_sort_horizontal = 0
let g:which_key_use_floating_win=1
let g:which_key_run_map_on_popup = 1
let g:which_key_align_by_seperator = 1
let g:which_key_fallback_to_native_key=0
let g:which_key_floating_opts = {
    "\'row':'3',
    \'col':'+4',
    "\'width':'80',
    "\'height':'50',
    \}
let g:WhichKeyFormatFunc = function('which_key#format')
let g:which_key_display_names = {
    \'<CR>': '↵',
    \' ': 'SPC',
    \'<C-H>': 'BS',
    \'<C-I>': 'TAB',
    \'<TAB>': '⇆'
    \}


highlight default link WhichKey          Function
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Keyword
highlight default link WhichKeyDesc      Identifier

highlight Pmenu guibg=DarkBlue gui=bold ctermbg=DarkBlue ctermfg=Green
highlight default link WhichKeyFloating  Pmenu
"highlight WhichKeyFloating IncSearch
"\ ctermbg=DarkBlue  ctermfg=Green
"\ guibg=DarkBlue guifg=Mengenta


" statusline
"autocmd! FileType which_key
"autocmd  FileType which_key set laststatus=0 noshowmode noruler
"\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

