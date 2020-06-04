set timeoutlen=500
let g:which_key_timeout = 600


nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
let g:which_key_exit = "<Space>"

"infects lightline
"autocmd  FileType which_key set laststatus=0 noshowmode noruler
"\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


let g:which_key_sep = '→'
let g:which_key_vertical=0
let g:which_key_use_floating_win=1
let g:which_key_run_map_on_popup = 1
let g:which_key_floating_opts = { 'col': '+4' }
let g:WhichKeyFormatFunc = function('which_key#format')

highlight Pmenu guibg=brown gui=bold
highlight default link WhichKey          Function
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Keyword
highlight default link WhichKeyDesc      Identifier
highlight default link WhichKeyFloating Pmenu
"highlight WhichKeyFloating IncSearch
"\ ctermbg=DarkBlue  ctermfg=Green
"\ guibg=DarkBlue guifg=Mengenta




