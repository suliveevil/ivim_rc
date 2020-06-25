let g:yankring_dot_repeat_yank  = 1
let g:yankring_ignore_duplicate = 1
let g:yankring_share_between_instances = 1
let g:yankring_min_element_length = 2
let g:yankring_max_element_length = 4194304 " 4MB
let g:yankring_max_history = 1024

if !isdirectory("_vim/.files/yankring")
    call mkdir("_vim/.files/yankring", "p")
endif
let g:yankring_history_dir = $HOME.'/_vim/.files/yankring'