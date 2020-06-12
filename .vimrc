if has('iVim')==1
    "set rtp=$HOME/_vim/,$VIMRUNTIME
    source ~/_vim/_rc/basic.vim
    source ~/_vim/_rc/pac.vim
else
    "set rtp+=$HOME/Documents/_vim/
    source ~/Documents/_rc/basic.vim
    source ~/Documents/_rc/pac.vim
endif
