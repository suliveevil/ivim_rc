"source $HOME/vimrc.d/__init__.vim
"
if has('iVim')==1
    set rtp+=$HOME/_vim/
    source ~/_vim_rc/basic.vim
    source ~/_vim_rc/rc_pac/__init__.vim
else
    set rtp+=$HOME/Documents/_vim/
    source ~/Documents/_vim_rc/basic.vim
    source ~/Documents/_vim_rc/rc_pac/__init__.vim
endif
