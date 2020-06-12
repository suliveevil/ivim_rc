
" nnoremap <Leader>gd <Plug>(openbrowser-search)

let g:openbrowser_default_search="baidu"
let g:openbrowser_search_engines = {
    \ 'eudic': 'eudic://dict/{query}',
    \ 'stack': 'http://stackoverflow.com/search?q={query}',
    \ 'github': 'https://github.com/search?q={query}',
    \ 'python': 'https://docs.python.org/dev/search.html?q={query}',
    \ 'devdocs': 'https://devdocs.io/#q={query}',
    \ 'baidu': 'https://www.baidu.com/s?wd={query}',
    \ 'cpan': 'http://search.cpan.org/search?query={query}',
    \ 'devdocs': 'https://devdocs.io/#q={query}',
    \ 'fileformat': 'https://www.fileformat.info/info/unicode/char/{query}/',
    \ 'wikipedia': 'https://en.wikipedia.org/wiki/{query}',
    \ 'yahoo': 'https://search.yahoo.com/search?p={query}',
    \ }
