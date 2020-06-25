nnoremap <silent><Leader>pp :CtrlP<CR>

let g:ctrlp_max_files = 4096
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_types = ['fil', 'buf', 'mru']
let g:ctrlp_match_window = '
    \bottom,
    \order:btt,
    \min:1,
    \max:20,
    \results:0
    \'
let g:ctrlp_tabpage_position = 'ac'
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_open_multiple_files = '2tjr'
let g:ctrlp_root_markers = [
    \ '.idea',
    \ '.git',
    \ '.hg',
    \ '.svn',
    \ '.root',
    \ '.project',
    \ ]
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }

" MacOSX/Linux
" let g:ctrlp_user_command = 'find %s -type f'
" let g:ctrlp_user_command =
    \ 'find %s -type f | grep -v -P "\.jpg$|/tmp/"'         

" Windows
" let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'
" let g:ctrlp_user_command =
\ 'dir %s /-n /b /s /a-d | findstr /v /l ".jpg \\tmp\\"' " Windows