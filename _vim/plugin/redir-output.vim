if exists("g:loaded_vim_redir_output")
  finish
endif
let g:loaded_vim_redir_output = 1

let s:cpo_save = &cpo
set cpo&vim

" redirect the output of a vim or external command into a scratch buffer
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
  put = '----'
endfunction

if !exists(":RedirT")
  command! -nargs=1 RedirT silent call <SID>redir('tabnew', <f-args>)
endif
if !exists(":RedirS")
  command! -nargs=1 RedirS silent call <SID>redir('new', <f-args>)
endif
if !exists(":RedirV")
  command! -nargs=1 RedirV silent call <SID>redir('vnew', <f-args>)
endif

let &cpo = s:cpo_save
unlet s:cpo_save
