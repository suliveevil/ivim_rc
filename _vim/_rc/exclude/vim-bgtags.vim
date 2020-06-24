let g:bgtags_user_commands = {
    \ "directories": {
        \ ".git": "ctags -R",
        \ ".root": "ctags -R",
        \ ".vscode": "ctags -R",
        \ ".idea": "ctags -R",
        \ ".svn": "ctags -R",
    \ },
    \ "filetypes": {
        \ "python": "ctags -f-",
        \ }
    \ }
    