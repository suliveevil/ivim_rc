" Prefix for mappings
let g:wheel_config.prefix = '<Leader>8'
nnoremap<Leader>88 <Plug>(wheel-navigation-location)
let g:wheel_config={}
let g:wheel_config.maxim={}

 " The file where toruses and circles will be stored and read
let g:wheel_config.file = '~/_vim/wheel/auto.vim'

" Auto read torus file on startup if > 0
let g:wheel_config.autoread = 1

" Auto write torus file on exit if > 0
let g:wheel_config.autowrite = 1

" Number of backups for the wheel file
let g:wheel_config.backups = 5

" The bigger it is, the more mappings available
let g:wheel_config.mappings = 10


" Auto cd to project root if > 0
let g:wheel_config.cd_project = 1

" Marker of project root
let g:wheel_config.project_markers = ['.git', '.racine-projet']

" Locate database ; default one if left empty
let g:wheel_config.locate_db = '~/_vim/wheel/locate/racine.db'

 " Maximum number of elements in history
let g:wheel_config.maxim.history = 50

" Maximum number of elements in input history
let g:wheel_config.maxim.input = 100

 " Maximum number of elements in mru
let g:wheel_config.maxim.mru = 120

 " Maximum number of elements in yank wheel
let g:wheel_config.maxim.yanks = 300

" Maximum size of elements in yank wheel
let g:wheel_config.maxim.yank_size = 3000

 " Maximum number of tabs
let g:wheel_config.maxim.tabs = 12

" Maximum number of horizontal splits
let g:wheel_config.maxim.horizontal = 3

" Maximum number of vertical splits
let g:wheel_config.maxim.vertical = 4
