" enable this plugin for filetypes, '*' for all files.

"let g:apc_enable_ft = {'text':1, 'markdown':1, 'py':1}
let g:apc_enable_ft = *


" source for dictionary, current or other loaded buffers, see ':help cpt'
set cpt=.,k,w,b

" don't select the first item.
set completeopt=menu,menuone,noselect

" suppress annoy messages.
set shortmess+=c
