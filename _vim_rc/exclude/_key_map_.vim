" Define prefix dictionary
let g:which_key_map =  {}
let g:which_key_map.name = 'Root'
let g:which_key_map.b = {
     \ 'name' : '+buffer' ,
     \ '1' : ['b1'        , 'buffer 1']        ,
     \ '2' : ['b2'        , 'buffer 2']        ,
     \ 'd' : ['bd'        , 'delete-buffer']   ,
     \ 'f' : ['bfirst'    , 'first-buffer']    ,
     \ 'h' : ['Startify'  , 'home-buffer']     ,
     \ 'l' : ['blast'     , 'last-buffer']     ,
     \ 'n' : ['bnext'     , 'next-buffer']     ,
     \ 'p' : ['bprevious' , 'previous-buffer'] ,
     \ '?' : ['Buffers'   , 'fzf-buffer']      ,
     \ }
call which_key#register('b', "g:buffer_dict")

let g:which_key_map.c = {
    \ 'name' : '+cscope' ,
    \ 's' : ['spacevim#vim#cscope#Find("symbol")'   , 'find-this-symbol']                       ,
    \ 'g' : ['spacevim#vim#cscope#Find("global")'   , 'global-definition']                      ,
    \ 'c' : ['spacevim#vim#cscope#Find("calls")'    , 'find-functions-calling-this-function']   ,
    \ 't' : ['spacevim#vim#cscope#Find("text")'     , 'text']                                   ,
    \ 'e' : ['spacevim#vim#cscope#Find("egrep")'    , 'egrep']                                  ,
    \ 'f' : ['spacevim#vim#cscope#Find("file")'     , 'find-this-file']                         ,
    \ 'i' : ['spacevim#vim#cscope#Find("includes")' , 'find-files-#include-this-file']          ,
    \ 'd' : ['spacevim#vim#cscope#Find("called")'   , 'find-functions-called-by-this-function'] ,
    \ }

let g:which_key_map.d = 'scroll-down'

let g:which_key_map.e = {
    \ 'name' : '+errors'     ,
    \ 'n' : 'next-error'     ,
    \ 'p' : 'previous-error' ,
    \ }
call which_key#register('e', "g:which_key_map.e")
let g:which_key_map.f = {
    \ 'name' : '+find/files/fold'             ,
    \ '0' : '0-fold-level'                    ,
    \ '1' : '1-fold-level'                    ,
    \ '2' : '2-fold-level'                    ,
    \ '3' : '3-fold-level'                    ,
    \ '4' : '4-fold-level'                    ,
    \ '5' : '5-fold-level'                    ,
    \ '6' : '6-fold-level'                    ,
    \ '7' : '7-fold-level'                    ,
    \ '8' : '8-fold-level'                    ,
    \ '9' : '9-fold-level'                    ,
    \ 'd' : 'find-current-buffer-in-NERDTree' ,
    \ 'f' : 'files-in-home-direcotry'         ,
    \ 's' : 'save-file'                       ,
    \ 't' : 'toggle-NERDTree'                 ,
    \ '?' : 'files-in-current-direcotry'      ,
    \ 'R' : 'reload-vimrc'                    ,
    \ 'b' : ['spacevim#map#manager#BLines()'  , 'fzf-find-current-buffer'] ,
    \ }

let g:which_key_map.g = {
    \ 'name' : '+git/version-control' ,
    \ 'b' : ['Gblame'                 , 'fugitive-blame']             ,
    \ 'c' : ['BCommits'               , 'commits-for-current-buffer'] ,
    \ 'C' : ['Gcommit'                , 'fugitive-commit']            ,
    \ 'd' : ['Gdiff'                  , 'fugitive-diff']              ,
    \ 'e' : ['Gedit'                  , 'fugitive-edit']              ,
    \ 'l' : ['Glog'                   , 'fugitive-log']               ,
    \ 'r' : ['Gread'                  , 'fugitive-read']              ,
    \ 's' : ['Gstatus'                , 'fugitive-status']            ,
    \ 'w' : ['Gwrite'                 , 'fugitive-write']             ,
    \ 'p' : ['Git push'               , 'fugitive-push']              ,
    \ 'y' : ['Goyo'                   , 'goyo-mode']                  ,
    \ }

let g:which_key_map.h = {
    \ 'name' : '+help',
    \ }

let g:which_key_map.j = {
    \ 'name' : '+jump/json'                   ,
    \ 'j' : 'easymotion-goto-char'       ,
    \ 'J' : 'easymotion-goto-char-2'     ,
    \ 'l' : 'jump-linewise'              ,
    \ 'w' : 'jump-to-word-bidirectional' ,
    \ 'f' : 'jump-forward-wordwise'      ,
    \ 'b' : 'jump-backword-wordwise'     ,
    \ 'F' : ['execute line(".")."!python -m json.tool"', 'format-current-raw-oneline-json'],
    \ }

let g:which_key_map.l = {
    \ 'name' : '+lsp'                               ,
    \ 'a' : ['spacevim#lang#util#CodeAction()'      , 'code-action']      ,
    \ 'f' : ['spacevim#lang#util#Format()'          , 'formatting']       ,
    \ 'h' : ['spacevim#lang#util#Hover()'           , 'hover']            ,
    \ 'r' : ['spacevim#lang#util#FindReferences()'  , 'references']       ,
    \ 'R' : ['spacevim#lang#util#Rename()'          , 'rename']           ,
    \ 's' : ['spacevim#lang#util#DocumentSymbol()'  , 'document-symbol']  ,
    \ 'S' : ['spacevim#lang#util#WorkspaceSymbol()' , 'workspace-symbol'] ,
    \ 'g' : {
      \ 'name': '+goto'                                       ,
      \ 'd' : ['spacevim#lang#util#Definition()'     , 'definition']      ,
      \ 't' : ['spacevim#lang#util#TypeDefinition()' , 'type-definition'] ,
      \ 'i' : ['spacevim#lang#util#Implementation()' , 'implementation']  ,
      \ }                                                     ,
    \ }

let g:which_key_map.p = {
    \ 'name' : '+projects'                      ,
    \ 'f' : ['spacevim#map#manager#FindFiles()' , 'find-file-in-project']         ,
    \ 's' : ['spacevim#map#manager#Rg()'        , 'search-in-project']            ,
    \ 'a' : ['Rag'                              , 'search-in-project-via-ag']     ,
    \ 'r' : ['spacevim#map#manager#Rg()'        , 'search-in-project-via-rg']     ,
    \ 'w' : ['spacevim#map#manager#RgCword()'   , 'find-cword-in-project-via-rg'] ,
    \ 'W' : ['spacevim#plug#fzf#SearchCword()'  , 'find-cword-in-project']        ,
    \ }

let g:which_key_map.r = {
    \ 'c' : 'replace-current-word-in-current-file',
    \ }

let g:which_key_map.q = [ 'q', 'quit' ]

let g:which_key_map.Q = [ 'qa!', 'quit-without-saving' ]

let g:which_key_map.s = {
    \ 'name' : '+search/show'                        ,
    \ 'c' : 'search-clear-highlight'                 ,
    \ 'h' : ['spacevim#util#SyntaxHiGroup()'         , 'show-highlight-group']              ,
    \ 'b' : ['spacevim#map#manager#BLines()'         , 'search-in-buffer']                  ,
    \ 'B' : ['spacevim#map#manager#BufCword()'       , 'search-cword-in-buffer']            ,
    \ 'r' : ['spacevim#map#manager#SearchRecently()' , 'search-recently-buffers-and-files'] ,
    \ }

let g:which_key_map.t = {
    \ 'name' : '+toggle/tag'                      ,
    \ 'g' : ['spacevim#plug#toggle#Git()'         , 'git-status-indicator']   ,
    \ 'i' : ['IndentGuidesToggle'                 , 'indent-guide']           ,
    \ 'p' : ['setlocal paste!'                    , 'paste-mode']             ,
    \ 's' : ['SyntasticToggleMode'                , 'syntastic']              ,
    \ 'b' : ['spacevim#map#manager#BufTags()'     , 'tags-in-current-buffer'] ,
    \ 'T' : ['TagbarToggle'                       , 'tagbar']                 ,
    \ 'c' : ['spacevim#vim#toggle#CursorColumn()' , 'cursor-column']          ,
    \ 'C' : ['spacevim#vim#toggle#ColorColumn()'  , 'color-column']           ,
    \ }

let g:which_key_map.u = 'scroll-up'

let g:which_key_map.w = {
    \ 'name' : '+windows'                       ,
    \ 'w' :  'other-window'                     ,
    \ 'd' :  'delete-window'                    ,
    \ '-' :  'split-window-below'               ,
    \ '|' :  'split-window-right'               ,
    \ '2' :  'layout-double-columns'            ,
    \ 'o' :  ['only', 'close-all-windows-except-current'] ,
    \ 'h' :  'window-left'                      ,
    \ 'j' :  'window-below'                     ,
    \ 'l' :  'window-right'                     ,
    \ 'k' :  'window-up'                        ,
    \ 'H' :  'expand-window-left'               ,
    \ 'J' :  'expand-window-below'              ,
    \ 'L' :  'expand-window-right'              ,
    \ 'K' :  'expand-window-up'                 ,
    \ '=' :  'balance-window'                   ,
    \ 's' :  'split-window-below'               ,
    \ 'v' :  'split-window-below'               ,
    \ '?' :  'fzf-window'                       ,
    \ }

let g:which_key_map.x = {
    \ 'name' : '+text'           ,
    \ 'a' : ['<Plug>(EasyAlign)' , 'easy-align']                 ,
    \ 'd' : ['StripWhitespace'   , 'delete-trailing-whitespace'] ,
    \ }
    