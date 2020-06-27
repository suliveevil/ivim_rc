" ┌───────────────────────────────────────────────────────────────────────────┐
" │                               Start Vim                                   │
" └───────────────────────────────────────────────────────────────────────────┘



" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                    Vim                                    │
" └───────────────────────────────────────────────────────────────────────────┘

" ✅ 禁用 vi 兼容模式
set nocompatible

" 设置 cmd 高度（⚠️ 注意：此处不允许等号两边有空格）
set cmdheight=2


" ✅ backspace
" 解决 vi compatible 模式或终端下 backspace 置空
set backspace=2
set backspace=eol,start,indent

"
set timeout
set timeoutlen=500

" ✅ 功能键超时检测（终端下功能键为一串 ESC 开头的字符串）
set ttimeout
" 功能键超时检测 50 毫秒
set ttimeoutlen=50

" ✅ spell check
set spell
" set spelllangs=en,fr,de,ch,jp
set spelllang=en_us,cjk
" set spell spelllang=en_US

" get a dialog when :q, :w, or :wq fails
set confirm


" remember undo after quitting
set hidden

" 命令行历史记录
set history=256

" syntax enable 可保存个人设置，syntax on 是使用 Vim 默认值
augroup syntax_set
    if exists("g:syntax_on")
        syntax reset
        syntax off
        syntax enable
    else
        syntax enable
    endif
augroup end




"✅ Leader 键-空格键作为 Leader(全局变量）
let g:mapleader = "\<space>"
noremap <Leader>q <Esc>


" line wrap toggle
nnoremap <leader>tlw :set wrap!<CR>
" line numbers
set numberwidth=3
set number relativenumber

" nnoremap <leader>tln :set norelativenumber number!<CR>
" " relative line numbers
" nnoremap <leader>tlr :set number relativenumber!<CR>


" Show key bindings
nnoremap <leader>?         :Redir verbose map<CR>
vnoremap <leader>?    <Esc>:Redir verbose map<CR>

" insert time
inoremap <Leader>dtt   <C-R>=strftime("%Y-%m-%d-%H:%M:%S")<CR>
inoremap <Leader>ymd   <C-R>=strftime("%y%m%d")<CR>
inoremap <Leader>mdy   <C-R>=strftime("%m/%d/%y")<CR>
inoremap <Leader>ndy   <C-R>=strftime("%b %d, %Y")<CR>
inoremap <Leader>hms   <C-R>=strftime("%T")<CR>
inoremap <Leader>ynd   <C-R>=strftime("%Y %b %d")<CR>
" ┌───────────────────────────────────────────────────────────────────────────┐
" │                       Encoding File FileType                              │
" └───────────────────────────────────────────────────────────────────────────┘
" set encoding=utf-8
" set termencoding=utf-8
" set fileencoding=utf-8
" set fileencodings=ucs-bom,utf-8,cp936,gb2312,latin1
" 检测文件类型
filetype on

" 针对不同的文件类型采用不同的缩进格式
filetype indent on

" 允许插件
filetype plugin on

" 允许文件类型插件
filetype plugin indent on

autocmd FileType *        setlocal foldmethod=manual
autocmd FileType markdown setlocal foldmethod=manual
autocmd FileType python   setlocal foldmethod=indent


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                 test                                      │
" └───────────────────────────────────────────────────────────────────────────┘


" :map  _ls  :!ls -l %:S<CR>:echo "the end"<CR>

" vnoremap <Leader>/ y/\V<C-R>=escape(@",'/\:')<CR><CR>



" ┌───────────────────────────────────────────────────────────────────────────┐
" │                     newly added - unclassified                            │
" └───────────────────────────────────────────────────────────────────────────┘





" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                 keys                                      │
" └───────────────────────────────────────────────────────────────────────────┘


" Buffer------------------------------
" 隐藏
nnoremap <leader>bh    :bhide<cr>
" open previous buffer
nnoremap <leader><Tab> :b#<CR>
" next buffer
nnoremap <leader>bn     :bnext<CR>
" previous buffer
nnoremap <leader>bp     :bprevious<CR>
" Copy whole buffer
nnoremap <leader>bY    :%y<CR>
vnoremap <leader>bY    <Esc>:%y<CR>

" Edit--------------------------------
" Insert line below
nnoremap <leader>ij    o<Esc>k
vnoremap <leader>ij    <Esc>o<Esc>k

" Insert line above
nnoremap <leader>ik    O<Esc>j
vnoremap <leader>ik    <Esc>O<Esc>j



" File--------------------------------
" copy file relative path
nnoremap <leader>fp :let @+ = expand("%")<CR>
" copy file full path
nnoremap <leader>fP :let @+ = expand("%:p")<CR>

" Project-----------------------------



" Register----------------------------
" Show registers
nnoremap <leader>re    :reg<CR>
vnoremap <leader>re    <Esc>:reg<CR>

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                    iVim                                   │
" └───────────────────────────────────────────────────────────────────────────┘



nnoremap <Leader>fd    :!openurl dash://<cword><CR> :<Esc>
nnoremap <Leader>fe    :!openurl eudic://dict/<cword><CR> :<Esc>
" nnoremap <Leader>fc    :!open -g dash://<cword><CR> :<Esc>
" nnoremap <Leader>fw    :!open -g eudic://dict/<cword><CR> :<Esc>
nnoremap <Leader>io    :idoc<CR>
nnoremap <Leader>is    :ishare<CR>

"✅ iVim Extended Keyboards
"nnoremap <leader>eks <D-s>
"nnoremap <leader>ekh <D-h>
"nnoremap <leader>ek. <D-.>




" ┌───────────────────────────────────────────────────────────────────────────┐
" │                              重定向 redir                                  │
" └───────────────────────────────────────────────────────────────────────────┘


" redirect the output
" from vim cmd or external command into a scratch buffer
function! s:redir(new, cmd)
    if a:cmd =~ '^!'
          execute "let output = system('" . substitute(a:cmd, '^!', '', '') . "')"
    else
          redir => output
          execute a:cmd
          redir END
    endif
        execute a:new
        setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile
        call setline(1, split(output, "\n"))
        put! = a:cmd
        put = '------'
endfunction

if !exists(":Redir")
    command! -nargs=1 Redir silent call <SID>redir('tabnew', <f-args>)
endif
if !exists(":RedirS")
    command! -nargs=1 RedirS silent call <SID>redir('new', <f-args>)
endif
if !exists(":RedirV")
    command! -nargs=1 RedirV silent call <SID>redir('vnew', <f-args>)
endif

let &cpo = s:cpo_save
unlet s:cpo_save



" helptab
" https://github.com/airblade/vim-helptab
let g:loaded_helptab = 1

function! s:HelpTab()
  if !(getcmdtype() == ':' && getcmdpos() <= 2)
    return 'h'
  endif

  let helptabnr = 0
  for i in range(tabpagenr('$'))
    let tabnr = i + 1
    for bufnr in tabpagebuflist(tabnr)
      if getbufvar(bufnr, "&ft") == 'help'
        let helptabnr = tabnr
        break
      endif
    endfor
  endfor

  if helptabnr
    if tabpagenr() == helptabnr
      return 'h'
    else
      return 'tabnext '.helptabnr.' | h'
    endif
  else
    return 'tab h'
  endif
endfunction

cnoreabbrev <expr> h <SID>HelpTab()

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                 Python                                    │
" └───────────────────────────────────────────────────────────────────────────┘



" 文件头-------------------------------
function FileHead()
    call append( 0,"---")
    call append( 1,"create time   : ".strftime("%Y-%m-%d %H:%M:%S") )
    call append( 2,"last modified : ".strftime("%Y-%m-%d %H:%M:%S") )
    call append( 3,"---")
    echo
endfunction
nnoremap <Leader>fh  <Esc>:call FileHead()<CR><C-I>

" 自动修改文件头信息：last modify time
function SetLastModifiedTimes()
    let pos = getpos('.')
    let line = getline(2)
    let newtime = "last modified : ".strftime("%Y-%m-%d %H:%M:%S")
    let repl = substitute(line,".*$",newtime,"g")
    let res = search("last modified","w")
    if res
        call setline(2,repl)
    endif
    call setpos(".",pos)
endfunction
autocmd BufWritePre *.md call SetLastModifiedTimes()

" 运行
au BufRead *.py map <buffer> <F5> :w<CR>:!/usr/bin/env python3 % <CR>

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                          work with other tools                            │
" └───────────────────────────────────────────────────────────────────────────┘


" Tools: ctags-------------------------------

" 查找当前目录下有没有 tags 文件，没有的话就向上查找直到找到为止
" looks up and up (non-recursively) until / for tags files.
set tags=./tags;/,tags;/



" tag file generated automatically
" augroup AutoTag
"    autocmd!
"    autocmd BufWritePost *.py,*.c,*.cpp,*.h
"        \ silent! !eval 'ctags -R -o tags 1>/dev/null 2>&1' &
" augroup END

" autocmd FileType c setlocal tags=/path/to/your/global/c/tags,./tags;/,tags;/
function SetTags()
    let curdir = getcwd()

    while !filereadable("tags") && getcwd() != "/"
        cd ..
    endwhile

    if filereadable("tags")
        execute "set tags=" . getcwd() . "/tags"
    endif

    execute "cd " . curdir
endfunction

call SetTags()

" find . -regex ".*\.\(c\|h\|hpp\|cc\|cpp\)"
"     \ -print | ctags --totals --recurse --extra="+qf" --fields="+i" -L -

function s:FindFile(file)
    let curdir = getcwd()
    let found = curdir
    while !filereadable(a:file) && found != "/"
        cd ..
        let found = getcwd()
    endwhile
    execute "cd " . curdir
    return found
endfunction


" Tools: cscope -----------------------------
if has('cscope')
    let $CSCOPE_DIR=s:FindFile("cscope.out")
    let $CSCOPE_DB=$CSCOPE_DIR."/cscope.out"
    if filereadable($CSCOPE_DB)
        cscope add $CSCOPE_DB $CSCOPE_DIR
    endif
    command -nargs=0 Cscope !cscope -ub -R &
endif


" Tools: gtags ------------------------------

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                             Edit & Diff                                   │
" └───────────────────────────────────────────────────────────────────────────┘



" 文件修改之后自动载入
set autoread

" 自动保存
set autowriteall

" 剪贴板
set clipboard=unnamed

" 剪贴板：让 Y 表现的和其他大写字母一样
map Y y$

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

" 重做：u 撤销， U 重做
nnoremap U <C-r>

保存python文件时删除多余空格
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufEnter FileType c,cpp,java,go,php
            \ autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
autocmd BufEnter FileType javascript,puppet
            \ autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
autocmd BufEnter FileType python,rust,twig
            \ autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
autocmd BufEnter FileType xml,yml,perl
            \ autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()


if has("patch-8.1.0360")
    set diffopt+=internal,algorithm:patience
endif



" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                     缩进                                  │
" └───────────────────────────────────────────────────────────────────────────┘


" 制表符、空格、缩进 Tab & Space
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

" 调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv

" for # indent, python文件中输入新行时#号注释不切回行首
autocmd BufNewFile,BufRead *.py inoremap # X<c-h>#


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                             补全与注释                                    │
" └───────────────────────────────────────────────────────────────────────────┘


" buffer
set complete+=b
" keyword
set complete+=k
"
set complete+=w
"
set complete+=u


set completeopt=preview,menu,menuone,noselect
" set completepopup=height:10,width:60,highlight:InfoPopup
" set omnifunc=syntaxcomplete#Complete
autocmd BufEnter FileType * setlocal      omnifunc=syntaxcomplete#Complete
autocmd BufEnter FileType python setlocal omnifunc=python3complete#Complete


" 完成（选中的）补全
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" 完成补全后自动关闭窗口
augroup complete
    autocmd!
    autocmd CompleteDone * pclose
augroup end

" Comment 方案一
" augroup commenting_blocks_of_code
"     autocmd!
"     autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
"     autocmd FileType sh,ruby,python   let b:comment_leader = '# '
"     autocmd FileType conf,fstab       let b:comment_leader = '# '
"     autocmd FileType tex              let b:comment_leader = '% '
"     autocmd FileType mail             let b:comment_leader = '> '
"     autocmd FileType vim              let b:comment_leader = '" '
" augroup END
" noremap <silent> <Leader>cc
"       \ :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')
"       \ <CR>/<CR>:nohlsearch<CR>
" noremap <silent> <Leader>cu
"       \ :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')
"       \ <CR>//e<CR>:nohlsearch<CR>


" Comment 方案二
" let s:comment_map = {
"     \   "c": '\/\/',
"     \   "cpp": '\/\/',
"     \   "go": '\/\/',
"     \   "java": '\/\/',
"     \   "javascript": '\/\/',
"     \   "lua": '--',
"     \   "scala": '\/\/',
"     \   "php": '\/\/',
"     \   "python": '#',
"     \   "ruby": '#',
"     \   "rust": '\/\/',
"     \   "sh": '#',
"     \   "desktop": '#',
"     \   "fstab": '#',
"     \   "conf": '#',
"     \   "profile": '#',
"     \   "bashrc": '#',
"     \   "bash_profile": '#',
"     \   "mail": '>',
"     \   "eml": '>',
"     \   "bat": 'REM',
"     \   "ahk": ';',
"     \   "vim": '"',
"     \   "tex": '%',
"     \ }

" function! ToggleComment()
"     if has_key(s:comment_map, &filetype)
"         let comment_leader = s:comment_map[&filetype]
"         if getline('.') =~ "^\\s*" . comment_leader . " "
"             " Uncomment the line
"             execute "silent s/^\\(\\s*\\)" . comment_leader . " /\\1/"
"         else
"             if getline('.') =~ "^\\s*" . comment_leader
"                 " Uncomment the line
"                 execute "silent s/^\\(\\s*\\)" . comment_leader . "/\\1/"
"             else
"                 " Comment the line
"                 execute "silent s/^\\(\\s*\\)/\\1" . comment_leader . " /"
"             end
"         end
"     else
"         echo "No comment leader found for filetype"
"     end
" endfunction
" cc:code comment
" nnoremap <leader>cc :call ToggleComment()<cr>
" vnoremap <leader>cc :call ToggleComment()<cr>


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                               查找搜索替换                                │
" └───────────────────────────────────────────────────────────────────────────┘


set magic
set hlsearch
set incsearch
set ignorecase
set smartcase

nnoremap <Leader>rev :/\v
nnoremap <Leader>rel :/\V

" 显示匹配总数及当前匹配位置
set shortmess-=S

" n 始终向后搜索，N 始终向前搜索
nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

autocmd BufWritePost :nohls<CR>

" find current word in quickfix
nnoremap <leader>fw :execute "vimgrep ".expand("<cword>")." %"<cr>:copen<cr>
" find last search in quickfix
nnoremap <leader>ff :execute 'vimgrep /'.@/.'/g %'<cr>:copen<cr>


" 屏幕重绘，取消搜索高亮，刷新 diff 模式高亮，解决代码语法高亮问题
"


" 替换：动态显示替换过程
if has('neovim')
    set inccommand=nosplit
endif



" ┌───────────────────────────────────────────────────────────────────────────┐
" │                               文件浏览器                                  │
" └───────────────────────────────────────────────────────────────────────────┘


" nnoremap <Leader>ft    :Lexplore %:p:h<CR>

" toggle netrw
nnoremap <silent> <Leader>ft :call ToggleNetrw()<CR>
let g:NetrwIsOpen=0
function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction


let g:netrw_altv=1
let g:netrw_keepdir = 0
let g:netrw_banner = 0
let g:netrw_winsize = 30

" Set Netrw with relative numbers
let g:netrw_bufsettings = 'noma nomod rnu nobl nowrap ro'

" list style: tree view
let g:netrw_liststyle = 3

let g:netrw_browse_split = 0
let g:netrw_browsex_viewer='open'
" let g:netrw_sort_by = 'name'
" let g:netrw_sort_options = 'i'
let g:netrw_sort_sequence = '[\/]$,*'
" let g:netrw_sort_direction = 'reverse'


 hi netrwCompress term=NONE cterm=NONE gui=NONE
             \ ctermfg=10 guifg=green  ctermbg=0 guibg=black
 hi netrwData	  term=NONE cterm=NONE gui=NONE
             \ ctermfg=9 guifg=blue ctermbg=0 guibg=black
 hi netrwHdr	  term=NONE cterm=NONE,italic gui=NONE guifg=SeaGreen1
 hi netrwLex	  term=NONE cterm=NONE,italic gui=NONE guifg=SeaGreen1
 hi netrwYacc	  term=NONE cterm=NONE,italic gui=NONE guifg=SeaGreen1
 hi netrwLib	  term=NONE cterm=NONE gui=NONE ctermfg=14 guifg=yellow
 hi netrwObj	  term=NONE cterm=NONE gui=NONE ctermfg=12 guifg=red
 hi netrwTilde	  term=NONE cterm=NONE gui=NONE ctermfg=12 guifg=red
 hi netrwTmp	  term=NONE cterm=NONE gui=NONE ctermfg=12 guifg=red
 hi netrwTags	  term=NONE cterm=NONE gui=NONE ctermfg=12 guifg=red
 hi netrwDoc	  term=NONE cterm=NONE gui=NONE
             \ ctermfg=220 ctermbg=27 guifg=yellow2 guibg=Blue3
 hi netrwSymLink  term=NONE cterm=NONE gui=NONE
             \ ctermfg=220 ctermbg=27 guifg=grey60

" 本地文件

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                   跳转                                    │
" └───────────────────────────────────────────────────────────────────────────┘


nnoremap <Leader>gj    :call GotoJump()<CR>
function! GotoJump()
    jumps
    let j = input("Please select your jump: ")
    if j != ''
        let pattern = '\v\c^\+'
        if j =~ pattern
            let j = substitute(j, pattern, '', 'g')
            execute "normal " . j . "\<c-i>"
        else
            execute "normal " . j . "\<c-o>"
        endif
    endif
endfunction

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                 折叠 Fold                                 │
" └───────────────────────────────────────────────────────────────────────────┘

" Fold settings
" fold method:indent,expr,syntax,marker,diff,manual
set foldenable
set foldlevel=20
set foldlevelstart=0
set foldnestmax=19
" specifies for which commands a fold will be opened
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo


augroup FoldMethods
    autocmd!
    autocmd FileType c,cpp      set foldmethod=syntax
    " autocmd FileType markdown   set foldmethod=syntax
    autocmd FileType python     set foldmethod=indent
augroup END




" Moving up/down by function, unfolding current function but folding all else
noremap [[  [[zMzvz.
noremap ]]  ]]zMzvz.



" fold unmatched lines when search
" https://github.com/carbonscott/vim-smartfold
nnoremap <Leader>zs :setlocal hls<CR>:call FoldUnmatch()<CR>
function FoldUnmatch()
    " Set foldmethod to be manual...
    set fdm=manual

    " Record where search starts...
    let s:current_cusor = getpos('.')

    " Get the search keyword...
    call setpos('.',[0,1,1,0])
    let s:search_term_orig = input("Search for: ")

    " Empty string...
    if empty(s:search_term_orig)
        call setpos('.',s:current_cusor)
        redraw
        echo "No string to search!"
        return
    endif

    " Initialize search...
    let s:search_term = '\<'.s:search_term_orig.'\>'
    let s:ln_init=1
    let s:ln_last=1
    let s:fold_position = []
    let s:ln_matched = search(s:search_term,'cW')

    " [debug purpose]
    let g:ln_matched = s:ln_matched

    " prime test if it is necessary to search for a complete string...
    if s:ln_matched == 0
        let s:search_term = deepcopy(s:search_term_orig)
        let s:ln_matched = search(s:search_term,'cW')

        if s:ln_matched == 0
            let s:ln_last = line('$')
            call setpos('.',s:current_cusor)
            redraw
            echo "No string {".s:search_term."} is found"
        endif
    endif

    " Record all matched positions...
    let s:fold_gaps = 0
    while s:ln_matched != 0
        if s:ln_matched - s:ln_last > s:fold_gaps
            call add(s:fold_position,[s:ln_last,s:ln_matched-1])
        endif
        let s:ln_last = deepcopy(s:ln_matched+1)
        " the search function here also moves the cursor
        " that's how it ends the while conditional loop...
        let s:ln_matched = search(s:search_term,'W')
    endwhile

    " If match happened at the last line, do not add it...
    if s:ln_last < line('$')
        call add(s:fold_position,[s:ln_last,line('$')])
    endif

    " Reset all folds and start to fold all non-matched lines...
    execute 'normal! zE'
    if len(s:fold_position) > 0

        for item in s:fold_position
            execute item[0].','.item[1].'fold'
        endfor

    endif

    let @/=s:search_term

    " Restore cursor position...
    call setpos('.',s:current_cusor)
endfunction



"✅ 代码折叠自定义快捷键 <leader>zz

" let g:FoldMethod = 0
" nnoremap <leader>zz :call ToggleFold()<CR>
" fun! ToggleFold()
"     if g:FoldMethod == 0
"         exe "normal! zM"
"         let g:FoldMethod = 1
"     else
"         exe "normal! zR"
"         let g:FoldMethod = 0
"     endif
" endfun



" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                  主题                                     │
" └───────────────────────────────────────────────────────────────────────────┘


" colo murphy
autocmd BufEnter FileType latex    colo vividchalk
autocmd BufEnter FileType python   colo default
autocmd BufEnter FileType markdown colo desert
" autocmd FileType markdown colo pencil

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                             颜色和高亮                                    │
" └───────────────────────────────────────────────────────────────────────────┘



highlight Pmenu guibg=DarkBlue guifg=Green ctermbg=DarkBlue ctermfg=Green
" highlight Pmenu ctermfg=250 ctermbg=000


" 取消搜索高亮
nnoremap <silent> <Esc><Esc> :noh<CR> :call clearmatches()<CR>

if !has('gui_running')
    set t_Co=256
    endif

" syntax setting conflicts with ctrlp performance
" 设置可以高亮的关键字
" if has("autocmd")
"   " Highlight TODO, FIXME, NOTE, etc.
"   if v:version > 701
"     autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|DONE\|XXX\)')
"     autocmd Syntax * call matchadd('Debug', '\W\zs\(BUG\|CHANGED\|FIXME\)')
"     autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
"   endif
" endif

" for error highlight，防止错误整行标红导致看不清
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                 字符                                      │
" └───────────────────────────────────────────────────────────────────────────┘


"✅ 空白字符
set list
"如果行尾有多余的空白字符,让这些字符显示为可见的小方块。
set listchars=tab:»■,trail:■
" set listchars+=eol:$,



"✅ 字体
if has('ivim')
    ifont Menlo 14
endif


"✅ 单行字符数提示(会导致屏幕重绘，耗时)
"set colorcolumn=80




" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                     UI                                    │
" └───────────────────────────────────────────────────────────────────────────┘

" 显示光标位置
set ruler


"✅


"✅ 标签栏状态栏命令栏---------------------------------------------------------
set showtabline=2
set guioptions-=e
set laststatus=2
set wildmenu
set wildmode=longest,list,full
"✅ 行-------------------------------------------------------------------------

"✅ 设置行宽，即一行显示多少个字符
set textwidth=80

"✅ 单行字符数提示
set colorcolumn=80

"✅ 行号 number 相对行号:根据模式切换相对行号
" set nonumber relativenumber
" autocmd FocusGained * :set relativenumber
" autocmd FocusLost * :set norelativenumber number
" autocmd vimenter *    :set number relativenumber
" autocmd InsertEnter * :set number norelativenumber
" autocmd InsertLeave * :set number relativenumber



"✅ 折行Wrap-------------------------------------------------------------------

"set wrapscan

"✅ 自动折行，即太长的行显示为多行的形式来适应屏幕
" set nowrap
" set wrap

" 在折行中移动
" nnoremap j gj
" nnoremap k gk
noremap <expr>j v:count == 0 ? 'gj' : 'j'
noremap <expr>k v:count == 0 ? 'gk' : 'k'

"不在单词内部折行，只有遇到指定的符号（比如空格、连词号和其他标点符号）才折行。
set linebreak

"指定折行处与编辑窗口的右边缘之间空出的字符数。
set wrapmargin=2



"合并两行中文时，不在中间加空格
set formatoptions+=B

"自动换行
set formatoptions+=t

"代码注释中自动换行
set formatoptions+=c

"代码注释 - 允许 gq 命令对注释进行格式化
set formatoptions+=q

"遇到 Unicode 值大于 255 的字符时不必等到空格再折行（wrap）
set formatoptions+=m

set formatoptions+=w

┌─────────────────────────────────────────────────────────────────────────────┐
│                                 光标和鼠标                                  │
└─────────────────────────────────────────────────────────────────────────────┘

"✅ 光标----------------------------------

" set virtualedit=onemore

set nocursorline
set nocursorcolumn

"✅ 水平滚动时，光标距离行首或行尾的位置（单位：字符）。
"该配置在不折行时比较有用。
"set sidescrolloff=10

set scrolloff=5

"自动定位到上次打开最后位置, 需要确认 .viminfo 当前用户可写
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |
              \exe "normal! g'\"" | endif
endif

"模式与光标样式
" 1 -> blinking block        " 2 -> solid block
" 3 -> blinking underscore   " 4 -> solid underscore
" 5 -> blinking vertical bar " 6 -> solid vertical bar
"SI = 插入模式
let &t_SI.="\e[5 q"
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"

"SR = 替换模式
let &t_SR.="\e[4 q"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"

"EI = 其他模式
let &t_EI.="\e[1 q"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"


" vim cursor escape codes for the terminal emulator
" INSERT (&t_SI)  - vertical bar (I-beam)
" REPLACE (&t_SR) - underscore
" VISUAL (&t_EI)  - block
" let &t_SI = "\<Esc>[5 q"
" let &t_SR = "\<Esc>[3 q"
" let &t_EI = "\<Esc>[1 q"

" set cursor to vertical bar when entering cmd line and
" revert cursor back to block when leaving cmd line
" autocmd CmdlineEnter * execute 'silent !echo -ne "' . &t_SI . '"'
" autocmd CmdlineLeave * execute 'silent !echo -ne "' . &t_EI . '"'



"光标颜色
" if has('gui_running')
"     highlight Cursor guifg=white guibg=black
"     highlight iCursor guifg=white guibg=steelblue
"     set guicursor=n-v-c:block-Cursor
"     set guicursor+=i:ver100-iCursor
"     set guicursor+=n-v-c:blinkon0
"     set guicursor+=i:blinkwait10
" endif

"光标所在行和列
" autocmd InsertLeave,WinEnter * set cursorcolumn
" autocmd InsertEnter,WinLeave * set cursorcolumn
" autocmd InsertLeave,WinEnter * set cursorline
" autocmd InsertEnter,WinLeave * set nocursorline

"✅ 鼠标------------------------------

" 只在可视模式下使用鼠标，而不是在 n i c 或 help 模式中
" set mouse=v
set mouse=ncr
set selection=exclusive
set selectmode=mouse,key

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                         undo swap backup viminfo                          │
" └───────────────────────────────────────────────────────────────────────────┘

" undo tree
set undofile
if !isdirectory("_vim/.files/undo")
    call mkdir("_vim/.files/undo", "p")
endif
set undodir     =~/_vim/.files/undo/

" swap 交换文件
if !isdirectory("_vim/.files/swap")
    call mkdir("_vim/.files/swap", "p")
endif
set dir         =~/_vim/.files/swap/
set updatecount =200
set updatetime  =5000


" viminfo 文件

" set viminfo=\"50,'1000,h,f1,rA:,r$TEMP:,r$TMP:,r$TMPDIR:,:500,!,n$VIM/_viminfo
" set viminfo='20,<50,s10
" remember copy registers after quitting in the .viminfo file
" 20 jump links, regs up to 500 lines
set viminfo='20,\"500


" 备份文件
if !isdirectory("_vim/.files/backup")
    call mkdir("_vim/.files/backup", "p")
endif
set backup
set backupdir   =~/_vim/.files/backup/
set backupext   =-vimbackup
set backupskip  =


" 新建

" 打开

" 保存


"⚠️ w!! 提权保存文件
cnoremap w!! w !sudo tee >/dev/null %

" 另存为

" 关闭

" 删除

" 网络文件

" 打开

"⚠️ 在浏览器预览 for iPadOS
" function! ViewInBrowser(name)
"     let file = expand("%:p")
"     let l:browsers = {
"         \"cr":"open -a \"Google Chrome\"",
"         \"ff":"open -a Firefox",
"     \}
"     let htdocs='/Users/leon1/'
"     let strpos = stridx(file, substitute(htdocs, '\\\\', '\', "g"))
"     let file = '"'. file . '"'
"     exec ":update " .file
"     "echo file .' "" '. htdocs
"     if strpos == -1
"         exec ":silent ! ". l:browsers[a:name] ." file://". file
"     else
"         let file=substitute(file, htdocs, "http://127.0.0.1:8090/", "g")
"         let file=substitute(file, '\\', '/', "g")
"         exec ":silent ! ". l:browsers[a:name] file
"     endif
" endfunction
" nmap <Leader>cr :call ViewInBrowser("cr")<cr>
" nmap <Leader>ff :call ViewInBrowser("ff")<cr>

" 保存

" 另存为

" native sidebar
let g:native_sidebar_shortcut = '<C-t>'

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                           ignore file folder                              │
" └───────────────────────────────────────────────────────────────────────────┘


"⚠️ 文件搜索和补全时忽略下面扩展名

" operating system----------------------------

set wildignore+=*DS_Store*,*.app*,.ipch

set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android

set wildignore+=*.gem,*/.nx/**


" version control
" git-----------------------------------------
set wildignore+=*.git,.git
" merc----------------------------------------
set wildignore+=.hg
" svn-----------------------------------------
set wildignore+=.svn,.stversions

" folder--------------------------------------
set wildignore+=**/bower_modules/**
set wildignore+=*/.sass-cache/*
set wildignore+=application/vendor/**
set wildignore+=**/vendor/ckeditor/**
set wildignore+=media/vendor/**

" file----------------------------------------

" mirror--------------------------------------
set wildignore+=*.iso

" ebook---------------------------------------
"set wildignore+=*.chm,*.epub,*.pdf,*.mobi

" font----------------------------------------

set wildignore+=*.ttf

" zip file------------------------------------
set wildignore+=*.zip,*.7z,*.rar
set wildignore+=*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz

" image---------------------------------------
set wildignore+=*.png,*.jpg,*.jpeg,*.gif,*.bmp
set wildignore+=*.tga,*.pcx,*.ppm,*.img

" audio---------------------------------------
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm

" video---------------------------------------
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc

" office--------------------------------------
set wildignore+=*.ppt,*.pptx
set wildignore+=*.doc,*.docx
set wildignore+=*.xls,*.xlsx,*.xlt
set wildignore+=*.odt
set wildignore+=*.wps

" language------------------------------------

set suffixes+=.swp
set suffixes=.bak,~,.o,.h,.info

set wildignore+=*.spl,*.o,*.out,*~,%*

set wildignore+=*.o,*.obj,*~,*.exe,*.a,*.pdb

set wildignore+=*.lib

set wildignore+=*.so,*.dll,*.swp,*.egg

set wildignore+=*.bin,*.dex

set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu

set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**

set wildignore+=*.mht,*.suo,*.sdf,*.jnlp

set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc

" C-------------------------------------------

" SQL-----------------------------------------

" Python--------------------------------------

set wildignore+=*.pyc

set suffixes+=.pyc,.pyo,.egg-info
set suffixes+=.class

set wildignore+=__pycache__,*.egg-info,.pytest_cache,.mypy_cache/**

" JavaScript----------------------------------

set wildignore+=**/node_modules/**

" Lua-----------------------------------------

" Java----------------------------------------

set wildignore+=*.jar,*.class

" Julia---------------------------------------

" Swift---------------------------------------

" Objective-C---------------------------------

set suffixes+=.obj

" Software------------------------------------

"✅ Emacs-------------------------------------

"✅ Vim---------------------------------------

"✅ Visual Studio Code------------------------

"✅ Visual Studio-----------------------------

"✅ Jetbrains PyCharm-------------------------


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                     Tab - ViewPort: Window 的布局                          │
" └───────────────────────────────────────────────────────────────────────────┘




"tablist = []
"for i in range(tabpagenr('$'))
"   call extend(tablist, tabpagebuflist(i + 1))
"endfor

" 创建/删除
"nnoremap <leader>tc :tabe<CR>


" 移动/聚焦 Use H and L to move to the previous/next tabpage.
nnoremap H gT
nnoremap L gt

" 调整布局

" 总结
" 一个文件可以有一个 Buffer，即只能同时被一个人**修改**。
" 一个 Buffer 只能对应一个文件，只能在一个 Window 里**修改**，
" 也就是说一个 Window 只能对应 一个 Buffer。
" 但一个或多个 Buffer 可以在多个 Window **查看**/展示
" 一个 Window 占用一部分界面。
" 一个 Tab 可以管理一个或多个 Window。
" 一个 Vim 界面可以有多个 Tab。

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                       window: show one buffer                             │
" └───────────────────────────────────────────────────────────────────────────┘


" 查看

" quick buffer open
nnoremap gb :ls<cr>:e #

" 创建
nnoremap <silent><leader>bo :enew<cr>
"nnoremap <leader>xl :set splitright<CR>:vsplit<CR>
"nnoremap <leader>xh :set nosplitright<CR>:vsplit<CR>
"nnoremap <leader>xk :set nosplitbelow<CR>:split<CR>
"nnoremap <leader>xj :set splitbelow<CR>:split<CR>


" 切换/聚焦
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l



" 调整

" nnoremap <leader>w" :res +5<CR>
" nnoremap <leader> w @ :res -5<CR>
nnoremap <leader>w0 :vertical resize-5<CR>
nnoremap <leader>w9 :vertical resize+5<CR>

" 退出 window 或 buffer（排除 nerdtree）
nnoremap <silent><Leader>Q  :call CloseWindowOrKillBuffer()<CR>
function! CloseWindowOrKillBuffer()
    let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

    " never bdelete a nerd tree
    if matchstr(expand("%"), 'NERD') == 'NERD'
        wincmd c
        return
    endif

    if number_of_windows_to_this_buffer > 1
        wincmd c
    else
       bdelete
    endif
endfunction



" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                   模式切换                                 │
" └───────────────────────────────────────────────────────────────────────────┘



" 普通➡️可视
" v

" 普通➡️可视-行
" V

" 普通➡️可视-块
" nnoremap <leader><leader>v <C-v>

" ----------------------------------------------

" 普通➡️选择
" s

" 普通➡️选择-行
" S

" 普通➡️选择-块


" ----------------------------------------------

" 插入➡️替换

" ----------------------------------------------

" 插入➡️选择

" ----------------------------------------------

" 插入➡️普通
inoremap jk <Esc>l
vnoremap jk <Esc>
cnoremap jk <Esc>
snoremap jk <Esc>


" ----------------------------------------------

" 插入➡️命令行

" ----------------------------------------------

" 插入➡️可视

" ----------------------------------------------

" 可视➡️普通
vnoremap <leader>q <ESC>

" ----------------------------------------------

" 命令行➡️普通

"----------------------------------✅ 命令模式---------------------------------

"移动 - Emacs ：Ctrl + [fbnpaeg]
"cnoremap <C-p> <Up>
"cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

"----------------------------------✅ 插入模式---------------------------------

"✅ 插入模式
"移动 - Emacs ：Ctrl + [fbnpaeg]
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
"inoremap <C-a> <Home>
"inoremap <C-e> <End>
"inoremap <C-g> <ESC>Gi

"✅ 插入模式(粘贴)

"✅ 普通和替换模式-------------------------------------------------------------


" 跳转 Home End
noremap H ^
noremap L $

" iPadOS 不需要设置 ; 替换 :
"nnoremap ; :

"保存
nnoremap <C-s> :w<CR>




"----------------------------------✅ 操组作符等待模式-------------------------


"----------------------------------✅ 可视模式---------------------------------

"----------------------------------✅ 终端模式---------------------------------

"----------------------------------✅ EX 模式----------------------------------

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                    Vim                                    │
" └───────────────────────────────────────────────────────────────────────────┘
