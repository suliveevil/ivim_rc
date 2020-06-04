let guider#config = {
    \ ' f': 'File',
    \ ' fc': 'CD Current File',
    \ ' fr': 'Recent Files',
    \ ' fs': 'New Scratch',
    \ ' fy': 'Copy FullPath To Clipboard',
    \ ' q': 'Quit',
\ }
nnoremap <silent><space>fc    :cd %:h<cr>
nnoremap <silent><space>fr    :Denite file/old'<cr>
nnoremap <silent><space>fs    :call vwm#scrach()<cr>
nnoremap         <space>ft    :conf e $TEMP/
nnoremap <silent><space>fy    :let @+=expand('%:p')<cr>
nnoremap <silent><space>q     :confirm qa<cr>

" Guide for mappings with <space> prefix
noremap  <expr><space> guider#(' ')
" Guide for mappings with 'g' prefix
noremap  <expr>g       guider#('g')
" Guide for all local-buffer mappings
noremap  <expr>\       guider#('<buffer>')