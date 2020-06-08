"source $HOME/vimrc.d/__init__.vim
"
if has('iVim')==1
    set rtp=$HOME/_vim/,$HOME/_vim_rc/,$VIMRUNTIME
    source ~/_vim_rc/basic.vim
    source ~/_vim_rc/rc_pac/__init__.vim
else
    set rtp=$HOME/Documents/,$HOME/_vim_rc/,$VIMRUNTIME
    source ~/Documents/_vim_rc/basic.vim
    source ~/Documents/_vim_rc/rc_pac/__init__.vim
"
endif
