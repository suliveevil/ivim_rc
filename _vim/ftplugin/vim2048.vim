nnoremap <buffer> h :call g:vim2048Game.MoveLeft()<cr>
nnoremap <buffer> l :call g:vim2048Game.MoveRight()<cr>
nnoremap <buffer> k :call g:vim2048Game.MoveUp()<cr>
nnoremap <buffer> j :call g:vim2048Game.MoveDown()<cr>

nnoremap <buffer> n :call g:vim2048Game.NewGame()<cr>
nnoremap <buffer> c :call g:vim2048Game.Controls()<cr>

nnoremap <buffer> q :call g:vim2048Game.Quit()<cr>

setlocal noautoindent
