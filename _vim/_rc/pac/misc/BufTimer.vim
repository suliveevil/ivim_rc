let g:buftimer_map = "<leader>bt"

let g:buftimer_report_map = "<leader>br"

let g:buf_report_autosave_periodic = 500

if !isdirectory("_vim/.files/BufTimerLog")
    call mkdir("_vim/.files/BufTimerLog", "p")
endif
let g:buf_report_autosave_dir = $HOME."/_vim/.files/BufTimerLog"