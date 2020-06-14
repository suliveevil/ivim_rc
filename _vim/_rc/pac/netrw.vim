
" Toggle Vexplore with Leader-O
function! ToggleVExplorer()
    if exists("t:expl_buf_num")
        let expl_win_num = bufwinnr(t:expl_buf_num)
        let cur_win_num = winnr()

        if expl_win_num != -1
            while expl_win_num != cur_win_num
                exec "wincmd w"
                let cur_win_num = winnr()
            endwhile

            close
        endif

        unlet t:expl_buf_num
    else
         Vexplore
         let t:expl_buf_num = bufnr("%")
    endif
endfunction

map <silent> <Leader>0 :call ToggleVExplorer()<CR>


" Open file, but keep focus in Explorer
autocmd filetype netrw nmap <c-a> <cr>:wincmd W<cr>



" behave like NERDTree
" do not display info on the top of window
let g:netrw_banner = 0

" absolute width of netrw window
let g:netrw_winsize = -28

" tree-view
let g:netrw_liststyle = 3

" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'

" act like "P" (ie. open previous window) to open file
let g:netrw_browse_split = 4


let g:netrw_altv = 1

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
set autochdir




" opens 100% high window (independent from window splits)
" :Lexplore opens it on left side, :Lexplore! on the right
" listing the directory of the current file (even on remote directories)
com!  -nargs=* -bar -bang -complete=dir  Lexplore  call netrw#Lexplore(<q-args>, <bang>0)

fun! Lexplore(dir, right)
  if exists("t:netrw_lexbufnr")
  " close down netrw explorer window
  let lexwinnr = bufwinnr(t:netrw_lexbufnr)
  if lexwinnr != -1
    let curwin = winnr()
    exe lexwinnr."wincmd w"
    close
    exe curwin."wincmd w"
  endif
  unlet t:netrw_lexbufnr

  else
    " open netrw explorer window in the dir of current file
    " (even on remote files)
    let path = substitute(exists("b:netrw_curdir")? b:netrw_curdir : expand("%:p"), '^\(.*[/\\]\)[^/\\]*$','\1','e')
    exe (a:right? "botright" : "topleft")." vertical ".((g:netrw_winsize > 0)? (g:netrw_winsize*winwidth(0))/100 : -g:netrw_winsize) . " new"
    if a:dir != ""
      exe "Explore ".a:dir
    else
      exe "Explore ".path
    endif
    setlocal winfixwidth
    let t:netrw_lexbufnr = bufnr("%")
  endif
endfun































