
" rc files - basic config $HOME/.vimrc.d/
for fpath in split(globpath('./.vimrc.d/', '*.vim'), '\n')
    exe 'source' fpath
endfor


" pac rc
for fpath in split(globpath('./.vimrc.d/pac/', '*.vim'), '\n')
    exe 'source' fpath
endfor

" pac rc - key
for fpath in split(globpath('./.vimrc.d/pac/key/', '*.vim'), '\n')
    exe 'source' fpath
endfor


" pac rc - explore
for fpath in split(globpath('./.vimrc.d/pac/explore', '*.vim'), '\n')
    exe 'source' fpath
endfor

" pac rc - find-search
for fpath in split(globpath('./.vimrc.d/pac/find-search', '*.vim'), '\n')
    exe 'source' fpath
endfor



nnoremap <silent><leader> :<C-u>WhichKey '<Space>'<CR>




