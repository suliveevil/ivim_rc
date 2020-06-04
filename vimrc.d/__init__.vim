
" rc files - basic config
for fpath in split(globpath('$HOME/vimrc.d/', '*.vim'), '\n')
    exe 'source' fpath
endfor

" rc files - for plugin/package
for fpath in split(globpath('~/vimrc.d/pac/', '*.vim'), '\n')
    exe 'source' fpath
endfor

