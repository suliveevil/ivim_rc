
autocmd User Startified setlocal cursorline
let g:startify_session_dir = $HOME .  '/.data/' . ( has('nvim') ? 'nvim' : 'vim' ) . '/session'

let g:startify_update_oldfiles     = 1
let g:startify_disable_at_vimenter = 1
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:startify_enable_special      = 1
let g:startify_files_number        = 15
let g:startify_relative_path       = 1
let g:startify_change_to_dir       = 1

let g:startify_custom_header =
\ startify#fortune#cowsay('', '═','║','╔','╗','╝','╚')
let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   Files   - MRU']            },
        \ { 'type': 'dir',       'header': ['   Folders - MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]
        

let g:startify_skiplist = [
        \ 'COMMIT_EDITMSG',
        \ 'pack/.*/.*/doc',
        \ '/data/repo/neovim/runtime/doc',
        \ '/Users/mhi/local/vim/share/vim/vim74/doc',
        \ ]

let g:startify_list_order = [
      \ ['   My most recently used files in the current directory:'],
      \ 'dir',
      \ ['   My most recently used files:'],
      \ 'files',
      \ ['   These are my sessions:'],
      \ 'sessions',
      \ ['   These are my bookmarks:'],
      \ 'bookmarks',
      \ ]
let g:startify_bookmarks = [
        \ { 'rc': '~/.vim/vimrc' },
        \ '~/golfing',
        \ ]

        


hi StartifyBracket ctermfg=240
hi StartifyFile    ctermfg=147
hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=114
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240




       let g:startify_custom_footer =
\ ['', "   Vim is charityware. Please read ':help uganda'.", '']


autocmd BufEnter *
       \ if !exists('t:startify_new_tab') && empty(expand('%')) && !exists('t:goyo_master') | 
       \   let t:startify_new_tab = 1 |
       \   Startify |
       \ endif
       