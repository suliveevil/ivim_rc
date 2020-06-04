"✅ 行--------------------------------------------------------------------------

"换行符显示
set list

"✅ 单行字符数提示
set colorcolumn=80

"✅ 行号 number
"✅ 相对行号:根据模式切换相对行号
augroup relative_numbers
        autocmd!
        autocmd InsertEnter * :set norelativenumber
        autocmd InsertEnter * :set number
        autocmd InsertLeave * :set nonumber
        autocmd InsertLeave * :set relativenumber
augroup END

"✅ 折行Wrap-------------------------------------------------------------------

set wrapscan

"✅ 自动折行，即太长的行分成几行显示
"关闭自动折行为set nowrap
set wrap


"不在单词内部折行，只有遇到指定的符号（比如空格、连词号和其他标点符号）才折行。
set linebreak

"指定折行处与编辑窗口的右边缘之间空出的字符数。
set wrapmargin=2

"✅ 设置行宽，即一行显示多少个字符
set textwidth=80

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