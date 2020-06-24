" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:autotagStopAt = [
\     '.root',
\     '.svn',
\     '.git',
\     '.hg',
\     '.history',
\     '.project',
\     '.idea',
\     '.vscode',
\     'requirements.txt',
\ ]




" 所生成的数据文件的名称 "
let g:autotagTagsFile="tags"

