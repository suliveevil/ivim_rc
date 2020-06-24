for fpath in split(globpath('~/_vim/_rc/pac/*/', '*.vim'), '\n')
    exe 'source' fpath
endfor

