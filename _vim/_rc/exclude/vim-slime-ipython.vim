let g:slime_ipython_no_mapping = 1

" show or hide REPL terminal-console
nnoremap <Leader>rc :ToggleConsole<CR>

" cell manager
call submode#MapEnterKeys('cell-mode', ['<Leader>cr', '<Leader><Esc>'])
call submode#MapLeaveKeys('cell-mode', ['<CR>', 'q'])
call submode#SetMaps('cell-mode', {
    \ '<Leader>cr': ':SendCurrentCellNext<CR>',  " will auto show REPL
    \ 'j': ':NextCell<CR>',
    \ 'k': ':PrevCell<CR>',
    \ 'J': ':MoveCellDown<CR>',
    \ 'K': ':MoveCellUp<CR>',
    \ 'dc': ':CutCurrentCell<CR>',
    \ 'yc': ':CopyCurrentCell<CR>',
    \ })

let g:slime_ipython_console_layout = {'position': 'bottom', 'height': 0.3}
let g:slime_ipython_repls = {
    \ 'python':["ipython3\n","%cpaste -q\n","--\n"],
    \ 'sh':["shell\n","",""]
    \ }
