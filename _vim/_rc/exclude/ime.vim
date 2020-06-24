let g:ime_enable_ime_buffer = 1
" 输入法菜单
let g:ime_menu = ';;'
" 切换中英文
let g:ime_toggle_english = ',,'
" 选择主要输入模式
let g:ime_select_mode = ',m'
" let g:ime_select_mode_style = 'popup'
let g:ime_select_mode_style = 'interactive'
" 交换主要次要模式"
let g:ime_switch_2nd = ',.'
let g:ime_show_2nd_mode = 0
" 取消输入法，恢复为输入法之前的字符
let g:ime_cancel_input = '<C-h>'

" 自定义字根表
" let g:ime_boshiamy_custom_table = '~/.boshiamy.table'

" 输入法插件
let g:ime_plugins = [
    \ 'builtin_chewing',
    \ 'pinyin',
    \ 'builtin_unicode',
    \ 'emoji',
    \ ]
let g:ime_phonetic_cache_size = 2048
" 自定义词库
" let g:ime_phonetic_custom_table = '~/.phonetic.table'