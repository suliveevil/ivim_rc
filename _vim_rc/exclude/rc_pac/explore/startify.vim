
let g:startify_session_dir   = $HOME

let g:startify_custom_header =
\ startify#fortune#cowsay('', '═','║','╔','╗','╝','╚')

let g:startify_custom_footer =
\ ['', "Life is short, use Python !", '']


autocmd BufEnter *
       \ if !exists('t:startify_new_tab') && empty(expand('%')) && !exists('t:goyo_master') | 
       \   let t:startify_new_tab = 1 |
       \   Startify |
       \ endif
autocmd User Startified setlocal cursorline

let g:startify_update_oldfiles     = 1
let g:startify_disable_at_vimenter = 1
let g:startify_session_autoload    = 1
let g:startify_session_persistence = 1
let g:startify_session_sort        = 1
let g:startify_enable_special      = 1
let g:startify_files_number        = 9
let g:startify_relative_path       = 1
let g:startify_change_to_dir       = 1

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU - Files'] },
        "\ { 'type': 'dir',      'header': ['   MRU - Directories' },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        "\ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ ]
        

let g:startify_skiplist = [
        \ 'COMMIT_EDITMSG',
        \ 'pack/.*/.*/doc',
        \ '/data/repo/neovim/runtime/doc',
        \ '/Users/mhi/local/vim/share/vim/vim74/doc',
        \ ]

let g:startify_list_order = [
      \ ['   My most recently used files:'],
      \ 'files',
      \ ['   My most recently used directory:'],
      \ 'dir',
      \ ['   These are my sessions:'],
      \ 'sessions',
      \ ['   These are my bookmarks:'],
      \ 'bookmarks',
      \ ]
let g:startify_bookmarks = [
        \ { 'basic': '~/_vim_rc/basic.vim' },
        \ { 'rc   ': '~/.vimrc' },
        \ ]


hi StartifyBracket ctermfg=240
hi StartifyFile    ctermfg=147
hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=114
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240


highlight StartifyBracket ctermfg=240
highlight StartifyFooter  ctermfg=240
highlight StartifyHeader  ctermfg=114
highlight StartifyNumber  ctermfg=215
highlight StartifyPath    ctermfg=245
highlight StartifySlash   ctermfg=240
highlight StartifySpecial ctermfg=240 
