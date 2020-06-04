set timeoutlen=500
let g:which_key_timeout = 300

“https://github.com/liuchengxu/space-vim/blob/master/layers/%2Bvim/which-key/config.vim
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

nnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual ','<CR>


autocmd! FileType which_key

"infects lightline
"autocmd  FileType which_key set laststatus=0 noshowmode noruler
"\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


let g:which_key_sep = '→'
"let g:which_key_exit="jk"
let g:which_key_vertical=0
let g:which_key_use_floating_win=1
let g:which_key_floating_opts = { 'col': '+4' }

highlight default link WhichKey          Function
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Keyword
highlight default link WhichKeyDesc      Identifier


"“highlight default link WhichKeyFloating Pmenu
highlight WhichKeyFloating 
\ ctermbg=DarkBlue  ctermfg=Green 
\ guibg=DarkBlue guifg=Mengenta
