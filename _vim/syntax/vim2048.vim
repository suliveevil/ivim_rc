if exists("b:current_syntax")
    finish
endif

syntax match vim2048_empty "    "
syntax match vim2048Boarders "\v\||-|_|\."
syntax match vim2048_2 "\v   2"
syntax match vim2048_4 "\v   4"
syntax match vim2048_8 "\v   8"
syntax match vim2048_16 "\v  16"
syntax match vim2048_32 "\v  32"
syntax match vim2048_64 "\v  64"
syntax match vim2048_128 "\v 128"
syntax match vim2048_256 "\v 256" 
syntax match vim2048_512 "\v 512"
syntax match vim2048_1024 "\v1024"
syntax match vim2048_2048 "\v2048"

syntax match vim2048_score "\vScore: [0-9]+"
syntax match vim2048_score "\vHigh score: [0-9]+"

highlight vim2048Boarders ctermfg=Gray ctermbg=Gray
highlight vim2048_2 ctermfg=0 ctermbg=7
highlight vim2048_4 ctermfg=0 ctermbg=3
highlight vim2048_8 ctermfg=0 ctermbg=208
highlight vim2048_16 ctermfg=0 ctermbg=166
highlight vim2048_32 ctermfg=0 ctermbg=196
highlight vim2048_64 ctermfg=0 ctermbg=1
highlight vim2048_128 ctermfg=0 ctermbg=221
highlight vim2048_256 ctermfg=0 ctermbg=11
highlight vim2048_512 ctermfg=0 ctermbg=226
highlight vim2048_1024 ctermfg=0 ctermbg=220
highlight vim2048_2048 ctermfg=0 ctermbg=226
highlight vim2048_score ctermfg=White ctermbg=Black

let b:current_syntax = "vim2048"
