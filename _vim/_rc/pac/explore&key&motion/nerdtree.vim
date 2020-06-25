let g:NERDTreeHijackNetrw=0
" autocmd vimenter * NERDTree
nnoremap <Leader>nt :NERDTreeToggle<CR>
let g:NERDTreeMapOpenVSplit = "<NOP>"

let g:NERDTreeDirArrows           = 1
let g:NERDTreeDirArrowExpandable  = '📁'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeShowHidden          = 1
let g:NERDTreeBookmarksFile       = 1
let g:NERDTreeShowBookmarks       = 1
let g:NERDTreeShowFiles           = 1
let g:NERDTreeShowLineNumbers     = 1
let g:NERDTreeWinSize             = 40
let g:NERDTreeMinimalUI           = 1
" 忽略以下文件的显示
let g:NERDTreeIgnore              = [
    \ '.*\.class',
    \ '.*\.pyc',
    \ '\.swp',
    \ '__pycache__',
    \ '.*\.chm',
    \ '.*\.ttf',
    \ '.*\.lnk',
    \ '.*\.cproj',
    \ '.*\.exe',
    \ '.*\.dll',
    \ '.*\.out',
    \ '.*\.files',
    \ '.*\.zip',
    \ '.*\.rar',
    \ '.*\.gif',
    \ '\.git$',
    \ '\.DS_Store',
    \ ]
            

let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ "Unknown"   : "?"
            \ }


" let g:NERDTreeNodeDelimiter       = "\u00a0"
let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['bat'        ] =  'ff8b52' 
let g:NERDTreeExtensionHighlightColor['class'      ] =  '80cbc4' 
let g:NERDTreeExtensionHighlightColor['conf'       ] =  '8cffba' 
let g:NERDTreeExtensionHighlightColor['css'        ] =  'ffcde6' 
let g:NERDTreeExtensionHighlightColor['deb'        ] =  'FFB340' 
let g:NERDTreeExtensionHighlightColor['odt'        ] =  '7FFF00' 
let g:NERDTreeExtensionHighlightColor['doc'        ] =  '7FFF00' 
let g:NERDTreeExtensionHighlightColor['docx'       ] =  '7FFF00' 
let g:NERDTreeExtensionHighlightColor['dtd'        ] =  'ff2c4b' 
let g:NERDTreeExtensionHighlightColor['ear'        ] =  'FFB340' 
let g:NERDTreeExtensionHighlightColor['fxml'       ] =  'ff2c4b' 
let g:NERDTreeExtensionHighlightColor['frxml'      ] =  'ff2c4b' 
let g:NERDTreeExtensionHighlightColor['gif'        ] =  'F5C06F' 
let g:NERDTreeExtensionHighlightColor['gradle'     ] =  '00c489'
let g:NERDTreeExtensionHighlightColor['groovy'     ] =  '4298b8' 
let g:NERDTreeExtensionHighlightColor['gz'         ] =  'FFB340' 
let g:NERDTreeExtensionHighlightColor['html'       ] =  '85FF66' 
let g:NERDTreeExtensionHighlightColor['iml'        ] =  'AD8FCC' 
let g:NERDTreeExtensionHighlightColor['jar'        ] =  'FFB340' 
let g:NERDTreeExtensionHighlightColor['java'       ] =  '80cbc4' 
let g:NERDTreeExtensionHighlightColor['jnlp'       ] =  'ad8fcc' 
let g:NERDTreeExtensionHighlightColor['jpeg'       ] =  'F5C06F' 
let g:NERDTreeExtensionHighlightColor['jpg'        ] =  'F5C06F' 
let g:NERDTreeExtensionHighlightColor['js'         ] =  'ffa500' 
let g:NERDTreeExtensionHighlightColor['lock'       ] =  'FFFF00' 
let g:NERDTreeExtensionHighlightColor['markdown'   ] =  'B973FF' 
let g:NERDTreeExtensionHighlightColor['md'         ] =  'B973FF' 
let g:NERDTreeExtensionHighlightColor['mkd'        ] =  'B973FF' 
let g:NERDTreeExtensionHighlightColor['php'        ] =  'ff00ff' 
let g:NERDTreeExtensionHighlightColor['png'        ] =  'F5C06F' 
let g:NERDTreeExtensionHighlightColor['properties' ] =  '8cffba' 
let g:NERDTreeExtensionHighlightColor['py'         ] =  '70d080' 
let g:NERDTreeExtensionHighlightColor['rar'        ] =  'FFB340' 
let g:NERDTreeExtensionHighlightColor['rpm'        ] =  'FFB340' 
let g:NERDTreeExtensionHighlightColor['rs'         ] =  'FF7033' 
let g:NERDTreeExtensionHighlightColor['rst'        ] =  'B973FF' 
let g:NERDTreeExtensionHighlightColor['sql'        ] =  '66A3FF' 
let g:NERDTreeExtensionHighlightColor['tags'       ] =  'ff6070' 
let g:NERDTreeExtensionHighlightColor['ttf'        ] =  'd0eeff' 
let g:NERDTreeExtensionHighlightColor['txt'        ] =  'ffffff' 
let g:NERDTreeExtensionHighlightColor['vim'        ] =  'afd700' 
let g:NERDTreeExtensionHighlightColor['war'        ] =  'FFB340' 
let g:NERDTreeExtensionHighlightColor['xml'        ] =  'ff2c4b' 
let g:NERDTreeExtensionHighlightColor['xls'        ] =  'ffff7d' 
let g:NERDTreeExtensionHighlightColor['xlsx'       ] =  'ffff7d' 
let g:NERDTreeExtensionHighlightColor['xsd'        ] =  'ff2c4b' 
let g:NERDTreeExtensionHighlightColor['yaml'       ] =  'c8c8c8' 
let g:NERDTreeExtensionHighlightColor['yml'        ] =  'c8c8c8' 
let g:NERDTreeExtensionHighlightColor['zip'        ] =  'FFB340' 
