
" rc files - basic config $HOME/vimrc.d/
for fpath in split(globpath('./vimrc.d/', '*.vim'), '\n')
    exe 'source' fpath
endfor

" rc files - for plugin/package ~/vimrc.d/pac/
for fpath in split(globpath('./vimrc.d/pac/', '*.vim'), '\n')
    exe 'source' fpath
endfor

