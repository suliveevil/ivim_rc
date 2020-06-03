
" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.vim/undo

nnoremap <Leader>5 :MundoToggle<CR>

let g:mundo_width = 60

let g:mundo_preview_height = 40

let g:mundo_right = 1

" Defaults
" let g:mundo_mappings = {
"           \ '<CR>': 'preview',
"           \ 'o': 'preview',
"           \ 'j': 'move_older',
"           \ 'k': 'move_newer',
"           \ '<down>': 'move_older',
"           \ '<up>': 'move_newer',
"           \ 'J': 'move_older_write',
"           \ 'K': 'move_newer_write',
"           \ 'gg': 'move_top',
"           \ 'G': 'move_bottom',
"           \ 'P': 'play_to',
"           \ 'd': 'diff',
"           \ 'i': 'toggle_inline',
"           \ '/': 'search',
"           \ 'n': 'next_match',
"           \ 'N': 'previous_match',
"           \ 'p': 'diff_current_buffer',
"           \ 'r': 'diff',
"           \ '?': 'toggle_help',
"           \ 'q': 'quit',
"           \ '<2-LeftMouse>': 'mouse_click' }



