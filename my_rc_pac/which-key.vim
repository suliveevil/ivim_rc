nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
"let g:which_key_exit="jk"
let g:which_key_vertical=0
let g:which_key_use_floating_win=1
set termguicolors
highlight WhichKeyFloating 
			\ ctermbg=DarkBlue  ctermfg=Green 
			\ guibg=DarkBlue guifg=Mengenta
