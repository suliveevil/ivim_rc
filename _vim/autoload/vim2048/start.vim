function! vim2048#start#loadClassFiles()
    runtime lib/vim2048/game.vim
endfunction


function! vim2048#start#NewGame()
    if bufwinnr("__vim2048_window__") == -1
        vsplit __vim2048_window__
        call vim2048#start#loadClassFiles()
        setlocal filetype=vim2048
        setlocal buftype=nofile
        call g:vim2048Game.DrawBoard()
    else
        execute g:vim2048Game.window . "wincmd w"
    endif
endfunction

function! vim2048#start#Quit()
    if exists(g:vim2048Game)
        call g:vim2048Game.Quit()
    endif
endfunction


function! vim2048#start#FunctionSetup()
    command! Vim2048 :call vim2048#start#NewGame()
    command! Vim2048Close :call vim2048#start#Quit()
endfunction
