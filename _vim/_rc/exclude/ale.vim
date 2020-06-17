nnoremap <silent> <C-k> <Plug>(ale_previous_wrap)
nnoremap <silent> <C-j> <Plug>(ale_next_wrap)





" cowork with airline
let g:airline#extensions#ale#enabled = 1

" linting
" let b:ale_linters = ['flake8']
" let b:ale_linters = {'python': ['flake8']}
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['flake8'],
\   'vue': ['javascript'],
\}



let g:ale_lint_delay = 300
let g:ale_lint_on_enter = 1
" let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
" let g:ale_linters_explicit = 1


" fixing

" let b:ale_fixers = ['autopep8', 'yapf']
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['autopep8','yapf','flake8'],
\}


let g:ale_fix_on_save = 1
let b:ale_warn_about_trailing_whitespace = 0

let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}
" If you configure g:ale_pattern_options outside of vimrc, you need this.
let g:ale_pattern_options_enabled = 1




" completion
let g:ale_completion_enabled = 0





let g:ale_list_window_size = 7

let g:ale_completion_delay = 300
let g:ale_echo_delay = 20

let g:ale_echo_msg_format = '[%linter%] %code: %%s'




let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 1


"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_sign_error = "\ue009\ue009"
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
" let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'



" hi! clear SpellBad
" hi! clear SpellCap
" hi! clear SpellRare
" hi! SpellBad gui=undercurl guisp=red
" hi! SpellCap gui=undercurl guisp=blue
" hi! SpellRare gui=undercurl guisp=magenta
