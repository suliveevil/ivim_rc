" https://github.com/zyprex/vim_sss

" INIBEGIN: functions
" {{{{
function! CleverTab()
    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
        return "\<Tab>"
    else
        return "\<C-N>"
    endif
endfunction

function! AutoPopComplMenu(complm)
  let l:charList = [
        \ 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
        \ 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
        \ 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
        \ 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
        \ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
        \ '.', ':', '@', '$']
  for key in l:charList
      execute printf("inoremap<expr><silent> %s pumvisible() ? \'%s\' : \'%s%s\'"
                  \ ,key,key,key,a:complm)
  endfor
endfunction

function! ExtraStatus()
    let exstate = []
    if &paste            |let exstate += ['paste']|endif
    if &virtualedit != ''|let exstate += ['vedit']|endif
    return exstate != [] ? ' {'.join(exstate,',').'} ' : ''
endfunction

function! GitBranchName()
    let gitroot = ".git"
    if isdirectory(gitroot)
        return split(readfile(gitroot."/HEAD")[0],"/")[2]
    else
        let pt = has("win32") ? '\\' :  '/'
        let dirn=split(expand("%:p"),pt)[:-3]
        let dirl=[]
        let path=''
        for i in dirn|let path=path.pt.i|call insert(dirl,path)|endfor
        for i in dirl
            let gitpath = has("win32") ? i[1:].pt.gitroot : i.pt.gitroot
            if isdirectory(gitpath)
                return split(readfile(gitpath."/HEAD")[0],"/")[2]
            endif
        endfor
    endif
    return ''
endfunction

function! TagfilesIndex()
    if exists("*mkdir")|call mkdir($HOME."/tagfiles","p")|endif|cd ~/tagfiles
    let l:incdir = {
                \ "cc":"/usr/include",
                \ "py":"/usr/lib/python3.7",
                \ "rb":"/usr/lib/ruby/2.5.0",
                \}
    for [key, value] in items(l:incdir)
        echo key " " value
        call system(g:ctags_bin.g:ctags_param." -f ".key." -R ".value)
    endfor
    echo "all work done!"
endfunction

function! QuickComment()
    let l:commentSymbol = { 'vim':'" ', 'c':'\/\/','cpp':'\/\/','sh':'# ','ruby':'# ', 'python':'# '  }
    let cSyml = has_key(l:commentSymbol, &filetype) ?
                  \ get(l:commentSymbol, &filetype) : ''
    if cSyml == ''
        echo "commentSymbol not set for *." . &filetype
    else
        let line = getline(".")
        call setline(".", (line =~ '^'.cSyml.'.*') ?
                    \ substitute(line, '^'.cSyml , ""   ,"g") :
                    \ substitute(line, '^'       , cSyml,"g") )
    endif
endfunction

function! SwitchSrcHeadFile()
    if expand("%:e") =~ '\(c\|cpp\|cxx\)'
        execute "e ".expand("%:r").".h"
    elseif expand("%:e") == 'h'
        execute "e ".expand("%:r").".c*" 
    endif
endfunction


function! EchoPrompt(mydict, ...)
    " mydict = {'%c': ['%s(name)', '%s(cmd)']}
    let hi1 = get(a:000, 0, "MoreMsg")
    let hi2 = get(a:000, 1, "Include")
    for [k,v] in items(a:mydict)
       exec 'echohl '.hi1.'|echon k|echohl '.hi2.'|echon ":" v[0] " "'
    endfor
    echohl None
    let k=nr2char(getchar()) | redraw!
    if has_key(a:mydict, k)|exec a:mydict[k][1]|endif
endfunction

function! BDOHconverter(base)
    let save_cursor = getcurpos()
    let cw = expand('<cword>')
    if cw =~? '\X[^0xX]\X' | return | endif   " match regex and ignore case
    let fmc=''
    if     a:base==?'x'|let fmc='#x'
    elseif a:base==?'d'|let fmc='d'
    elseif a:base==?'o'|let fmc='#o'
    elseif a:base==?'b'|let fmc='#010b' |endif
    exec 's/'.cw.'/\=printf("%'.fmc.'",submatch(0))/g'
    call setpos('.', save_cursor)
endfunction


function! FtCmd(cmd_dict)
    if has_key(a:cmd_dict,&filetype)
        let  cmd = a:cmd_dict[&filetype]
        let  cmd = substitute(cmd,"%",expand("%"),"g")
        echon cmd
    else
        return
    endif
    if has("job") && has("channel") && cmd[0] == '!'
        let s:Ft_job=job_start(cmd[1:],{"callback":"FtCmdCallback"})
    else
        execute cmd
    endif
endfunction
func! FtCmdCallback(channel, msg)
    echo a:channel
endfunc

"}}}
" INIBEGIN: required :>
if has(&compatible) | set nocompatible | endif
if has('python3')   | set pyxversion=3 | endif

filetype plugin indent on
syntax enable
set t_Co=256
colorscheme desert

"INIBEGIN: options -- hidden gdefault
set hidden nu rnu laststatus=2 wrap linebreak breakindent termencoding=utf-8 encoding=utf-8 fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936 background=dark foldmethod=marker nofoldenable browsedir=buffer autochdir smartindent tabstop=4 shiftwidth=4 expandtab cmdheight=1 laststatus=2 textwidth=0 showcmd showmatch matchtime=1 showmode hlsearch incsearch ignorecase smartcase gdefault mousehide mouse=a backspace=2 scrolloff=99 display=lastline history=9999 noswapfile autoread exrc secure nostartofline title shortmess=flnxtToOcF updatetime=400 ttyfast ttyscroll=3 timeout timeoutlen=500 ttimeoutlen=50 modeline modelines=4
set wildmenu wildmode=full wildignore+=**/.git/**,**/__pycache__/**,**/venv/**,**/node_modules/**,**/dist/**,**/build/**,*.o,*.pyc,*.swp
set define="^\(#\s*define\|[a-z]*\s*const\s*[a-z]*\)"
set complete=.,w,b,u,t,i
set completeopt=menuone,noselect,preview pumheight=0 pumwidth=0 previewheight=7
" set completepopup=height:10,width:10,align:menu,border:on,highlight:IncSearch
"INIBEGIN: highlight
hi! Pmenu        cterm=NONE ctermfg=Black ctermbg=DarkGrey guifg=#878787 guibg=#303030
hi! PmenuSel     cterm=NONE ctermfg=Black ctermbg=Grey guifg=Black guibg=#5F5F5F
hi! StatusLine   cterm=underline,bold ctermfg=Green ctermbg=Black gui=underline,bold guifg=#87af00 guibg=Black
hi! StatusLineNC cterm=underline ctermfg=DarkGreen ctermbg=Black gui=underline guifg=#878700 guibg=Black
hi! TabLineFill  cterm=underline ctermfg=DarkGrey ctermbg=Black gui=underline guifg=#454545 guibg=Black
hi! TabLine      cterm=underline ctermfg=DarkCyan ctermbg=Black gui=underline guifg=#87af00 guibg=Black
hi! TabLineSel   cterm=NONE ctermfg=Black ctermbg=DarkGreen guifg=Black guibg=#87af00
hi! VertSplit    cterm=NONE ctermfg=LightGreen ctermbg=Black guifg=#00d700 guibg=Black
hi! Search       cterm=NONE ctermfg=Grey ctermbg=DarkMagenta  gui=NONE guifg=Grey guibg=#87005f
hi! IncSearch    cterm=underline ctermfg=Yellow ctermbg=Green gui=underline guifg=White guibg=#664066
hi! CursorLine   cterm=reverse gui=NONE guibg=#303500
hi! CursorColumn cterm=reverse gui=NONE guibg=#354510

hi! User1 cterm=inverse,bold ctermfg=Red    ctermbg=Black guifg=Black guibg=#FF5F00
hi! User2 cterm=inverse,bold ctermfg=Green  ctermbg=Black guifg=Black guibg=#008700
hi! User3 cterm=inverse,bold ctermfg=Blue   ctermbg=Black guifg=Black guibg=#005FFF
hi! User4 cterm=inverse,bold ctermfg=Yellow ctermbg=Black guifg=Black guibg=#D7D700
hi! User5 cterm=bold         ctermfg=Blue   ctermbg=Black guifg=#0050FF guibg=Black

set statusline=%q(%n)%<%f%1*%m%*%4*%r%*%w
            \%=%5*%{ExtraStatus()}%*%{&ff}.%\{&fenc==\"utf-8\"?\"\":toupper(&fenc)\}%Y%5l\ Ξ\ %2v
set statusline^=%3*%{GitBranchName()}%*
" autocmd FileType * setlocal formatoptions-=cro " disable insert comment
" automatically
set list listchars=tab:»\ ,trail:·,nbsp:_,precedes:<,extends:>

" INIBEGIN:key maps
" leader-group
nnoremap s <NOP>
let mapleader='s'
let g:netrw_banner=0
let g:netrw_liststyle = 2
let g:netrw_list_hide= '.*\.swp$'
let g:netrw_sort_by = "exten"
let g:netrw_sizestyle = "H"
" let g:netrw_winsize = 20
let g:netrw_special_syntax = 1
nnoremap <leader>E :Sexplore<CR>
nnoremap <leader>T :call FileTypeConf()<CR>
nnoremap<silent> <leader>I :call ImmersiveMode()<cr>
nnoremap<silent> <leader>_ :call AutoPages(20)<cr>
nnoremap <leader>w :w<CR>
cnoremap w!! w !sudo tee % >/dev/null
nnoremap \ :noh\|redraw!<CR>
" n-mode paste copy
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy
" v-mode paste copy
xnoremap <leader>p "+p
xnoremap <leader>P "+P
xnoremap <leader>y "+y
" append to clipboard reg
xnoremap say y:let @+ .= @0<cr>
" alternate file (ctrl+6)
nnoremap <C-Tab> <C-^>
" always enter improved Ex-mode
nnoremap Q gQ
" always enter virtual Replace-mode
nnoremap r gr
nnoremap R gR
" inspired by vim-unimpaired
nnoremap <leader>[ :cclose<CR>
nnoremap <leader>] :<C-R>=len(getqflist())<CR>copen<CR>
nnoremap <leader>{ :lclose<CR>
nnoremap <leader>} :<C-R>=len(getloclist(0))<CR>lopen<CR>
nnoremap -- :pclose<CR>
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>
nnoremap [c :cprevious<CR>
nnoremap ]c :cnext<CR>
nnoremap [l :lprevious<CR>
nnoremap ]l :lnext<CR>
nnoremap [t :tprevious<CR>
nnoremap ]t :tnext<CR>
" auto-pair
inoremap ## #{}i
inoremap $$ ${}i
inoremap `` ``i
inoremap %% %%i
inoremap '' ''i
inoremap "" ""i
inoremap () ()i
inoremap [] []i
inoremap {} {}i
inoremap <> <>i
inoremap {<CR> {}i<CR>O

" [number]+ctrl+_ comment/uncomment line
nnoremap <C-_> :call QuickComment()<cr>
xnoremap <C-_> :call QuickComment()<cr>
inoremap <C-_> <C-o>:call QuickComment()<cr>

" group maps
let g:conv_menu_item = {
            \'x': ['hex', 'call BDOHconverter("x")'],
            \'d': ['dec', 'call BDOHconverter("d")'],
            \'o': ['oct', 'call BDOHconverter("o")'],
            \'b': ['bin', 'call BDOHconverter("b")'],
            \}
nnoremap gx :let cw=expand('<cword>')
            \\|echon printf("%s --> %#b %#o %d %#x\n",cw,cw,cw,cw,cw)
            \\|call EchoPrompt(g:conv_menu_item)<CR>
let g:cc_cache_file=$HOME.'/.cache/cout'
let g:compile_configure={
            \'vim'    :'so %',
            \'c'      :'!gcc % -g -o '.g:cc_cache_file,
            \'cpp'    :'!g++ %    -o '.g:cc_cache_file,
            \'sh'     :'!./%',
            \'python' :'!./%',
            \}
nnoremap <leader>c :call FtCmd(g:compile_configure)<CR>
let g:debug_configure={
            \'c'  :'terminal gdb -q '.g:cc_cache_file,
            \'cpp':'terminal gdb -q '.g:cc_cache_file,
            \}
nnoremap <leader>d :call FtCmd(g:debug_configure)<CR>

let g:switch_menu_item = {
            \'w':['wrap','setlocal wrap!|echo &wrap?"wrap":"nowrap"'],
            \'p':['paste','set paste!'],
            \'v':['virtualedit',"let &ve=&ve==''?'all':''|echo &ve"],
            \'s':['scrolloff','let &so=&so==0?99:0|echo &so'],
            \'-':['cursorLine','setlocal cul!'],
            \'|':['cursorColumn','setlocal cuc!'],
            \'+':['cursorLineColumn','setlocal cul! cuc!'],
            \'*':['syntax' ,'if exists("g:syntax_on")|syntax off|else|syntax enable|endif'],
            \}
nnoremap <leader>o :call EchoPrompt(g:switch_menu_item)<CR>


let g:misc_menu_item = {
\ "R" : ["renameBuf",
\ "let n=input(\"new file name:\")|if n|call rename(expand(\"%\"),n)|exec 'e '.n|endif"],
\ "S" : ["trimTrailingSpace",
\ "let save_cursor = getcurpos()|%s\/\\s\\+$\/\/e|call setpos('.', save_cursor)"],
\ "A" : ["lineAppend",
\ 'let a=input("%LN %S:")|if a|exec ".,+".printf("%d",a)."normal A".a[stridx(a," ")+1:]|endif'],
\ "L" : ["lineReplace", "exec 's/'.input('old/new:').'/g'"],
\ "l" : ["locGrep", "let l=input('%P %F:')|if l!=''|exec 'lv '.l|exec 'lopen' |else|echo 'ERROR'|endif"],
\ "r" : ["reloadAllPlugin",'ru! plugin/**/*.vim'],
\}
nnoremap <C-K> :call EchoPrompt(g:misc_menu_item, "SpecialKey", "WarningMsg")<CR>

" \\\\\\\\\\\\\\\\\\\\
let g:apcm_menu_item ={
            \ 'l' : ['wholeLine ', 'call AutoPopComplMenu("<C-X><C-L>")'],
            \ 'n' : ['keywords', 'call AutoPopComplMenu("<C-X><C-N>")'],
            \ 'k' : ['dictionary', 'call AutoPopComplMenu("<C-X><C-K>")'],
            \ 't' : ['thesaurus', 'call AutoPopComplMenu("<C-X><C-T>")'],
            \ 'u' : ['userDefine', 'call AutoPopComplMenu("<C-X><C-U>")'],
            \ 'i' : ['include', 'call AutoPopComplMenu("<C-X><C-I>")'],
            \ ']' : ['tags', 'call AutoPopComplMenu("<C-X><C-]>")'],
            \ 'f' : ['files', 'call AutoPopComplMenu("<C-X><C-F>")'],
            \ 'd' : ['definition', 'call AutoPopComplMenu("<C-X><C-D>")'],
            \ 'v' : ['vimCommand', 'call AutoPopComplMenu("<C-X><C-V>")'],
            \ 'o' : ['omnifunc', 'call AutoPopComplMenu("<C-X><C-O>")'],
            \ 's' : ['spelling', 'call AutoPopComplMenu("<C-X>s")'],
            \ 'p' : ['mixed', 'call AutoPopComplMenu("<C-N>")'],
            \ ' ' : ['auto-off', 'call AutoPopComplMenu("")'],
            \}
call AutoPopComplMenu("<C-N>")
inoremap <C-X> <C-O>:call EchoPrompt(g:apcm_menu_item)<CR>

" auto-pop-compl-menu
inoremap<expr> <Tab>   pumvisible()? "\<C-N>" : "\<C-R>=CleverTab()\<CR>"
inoremap<expr> <S-Tab> pumvisible()? "\<C-p>" : "\<C-g>u\<S-Tab>"
inoremap<expr> <CR>    pumvisible()? "\<C-y>" : "\<C-g>u\<Cr>"


" INIBEGIN: command & autocmd
command! A call SwitchSrcHeadFile()
command! -range QuickComment <line1>,<line2>call QuickComment()
" add your tags files
set tags+=../tags;
let g:ctags_bin="ctags-universal"
let g:ctags_param=" --c-kinds=+pxz --c++-kinds=+ALNUp --fields=NPKSaistz --extras=+fgqr "
command! GenerateTags call system(g:ctags_bin . g:ctags_param . " -f - > ~/tagfiles/_ -R ." )
" autocmd BufWritePost * call system(g:ctags_bin.g:ctags_param." -f - > ~/tagfiles/_ -R .")
set tags+=~/tagfiles/_

augroup TAGFILES
    autocmd!
    autocmd FileType c,cpp  setlocal tags+=~/tagfiles/cc
    autocmd FileType python setlocal tags+=~/tagfiles/py
    autocmd FileType ruby   setlocal tags+=~/tagfiles/rb
augroup END

" add your path (include files etc.)
set path+=$PWD/**
augroup ADDPATHS
    autocmd!
    autocmd FileType c,cpp  setlocal path+=/usr/include/x86_64-linux-gun
    autocmd FileType python setlocal path+=/usr/lib/python3.7
    autocmd FileType ruby   setlocal path+=/usr/lib/ruby/2.5.0
augroup END

" head line
augroup HEADLINE
    autocmd!
    autocmd BufNewFile *.rb call setline(1,"\#!/usr/bin/ruby -w")
    autocmd BufNewFile *.py call setline(1,"\#!/usr/bin/python3.7")
augroup END

" vim:fdm=marker:nowrap: