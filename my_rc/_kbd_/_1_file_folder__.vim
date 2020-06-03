" 本地文件

" 新建



" 打开



" 保存
nmap <c-s> :w<cr>

"⚠️ w!! 提权保存文件
cmap w!! w !sudo tee >/dev/null %

" 另存为



" 关闭


" 删除



" 网络文件


" 打开

"⚠️ 在浏览器预览 for iPadOS
function! ViewInBrowser(name)
    let file = expand("%:p")
    let l:browsers = {
        \"cr":"open -a \"Google Chrome\"",
        \"ff":"open -a Firefox",
    \}
    let htdocs='/Users/leon1/'
    let strpos = stridx(file, substitute(htdocs, '\\\\', '\', "g"))
    let file = '"'. file . '"'
    exec ":update " .file
    "echo file .' ## '. htdocs
    if strpos == -1
        exec ":silent ! ". l:browsers[a:name] ." file://". file
    else
        let file=substitute(file, htdocs, "http://127.0.0.1:8090/", "g")
        let file=substitute(file, '\\', '/', "g")
        exec ":silent ! ". l:browsers[a:name] file
    endif
endfunction
nmap <Leader>cr :call ViewInBrowser("cr")<cr>
nmap <Leader>ff :call ViewInBrowser("ff")<cr>


" 保存

" 另存为


