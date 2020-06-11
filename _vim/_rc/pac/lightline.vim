set noshowmode

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \ 'left': [ [
      \             'mode',
      \             'paste',
      \           ],
      \           [ 
      \             'filename',
      \             'readonly',
      \             'modified',
      \             'charvaluehex',
      \           ] ],
      \ 'right': [ [ 
      \              'fileformat', 
      \              'fileencoding',
      \              'filetype', 
      \            ],
      \            [ 
      \              'lineinfo',
      \              'percent',
      \            ] ]
      \ },
      \ 'component': {
      \   'syntastic': 'SyntasticStatuslineFlag',
      \   'charvaluehex': '0x%B'
      \ }}



" let g:lightline = {
"       \ 'colorscheme': 'wombat',
"       \ 'active': {
"       \ 'left': [ [ 'mode', 'paste' ],
"       \             [ 'readonly', 'filename' ] ],
"       \ },
"       \ 'right': [ [ 'lineinfo' ],
"       \              [ 'percent' ],
"       \              [ 'fileformat', 'fileencoding',
"       \                'filetype', 'charvaluehex' ] ]
"       \ },
"       \ 'component': {
"       \   'charvaluehex': '0x%B'
"       \ },
"       \ }

" let g:lightline.inactive = {
"     \ 'left': [ [ 'filename' ] ],
"     \ 'right': [ [ 'lineinfo' ],
"     \            [ 'percent' ] ] }


" let g:lightline.tab = {
"     \ 'active': [ 'tabnum', 'modified', 'filename' ],
"     \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }
