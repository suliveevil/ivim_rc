"⚠️ 文件搜索和补全时忽略下面扩展名

"✅ Operating System--------------------------------------------------------

set wildignore+=*DS_Store*,*.app*,.ipch

set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android

set wildignore+=*.gem,*/.nx/**


"✅ version control------------------------------------------------------------

" git----------------------------------------
set wildignore+=*.git,.git

" merc----------------------------------------
set wildignore+=.hg

"svn----------------------------------------
set wildignore+=.svn,.stversions

"✅ folder----------------------------------------------------------------


set wildignore+=**/bower_modules/**

set wildignore+=*/.sass-cache/*

set wildignore+=application/vendor/**

set wildignore+=**/vendor/ckeditor/**

set wildignore+=media/vendor/**

"✅ file--------------------------------------------------------------------


" mirror---------------------------------------
set wildignore+=*.iso

" ebook----------------------------------------
"set wildignore+=*.chm,*.epub,*.pdf,*.mobi

" font----------------------------------------

set wildignore+=*.ttf

" zip file--------------------------------------
set wildignore+=*.zip,*.7z,*.rar
set wildignore+=*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz

" image------------------------------------------------------------
set wildignore+=*.png,*.jpg,*.jpeg,*.gif,*.bmp
set wildignore+=*.tga,*.pcx,*.ppm,*.img


" audio--------------------------------------
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm

" video---------------------------------------
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc

" office------------------------------------
set wildignore+=*.ppt,*.pptx
set wildignore+=*.doc,*.docx
set wildignore+=*.xls,*.xlsx,*.xlt
set wildignore+=*.odt
set wildignore+=*.wps

"✅ language----------------------------------------------------------------

set suffixes+=.swp
set suffixes=.bak,~,.o,.h,.info

set wildignore+=*.spl,*.o,*.out,*~,%*

set wildignore+=*.o,*.obj,*~,*.exe,*.a,*.pdb

set wildignore+=*.lib

set wildignore+=*.so,*.dll,*.swp,*.egg


set wildignore+=*.bin,*.dex


set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu

set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**

set wildignore+=*.mht,*.suo,*.sdf,*.jnlp

set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc


" C----------------------------------------

" SQL----------------------------------------

" Python----------------------------------------

set wildignore+=*.pyc

set suffixes+=.pyc,.pyo,.egg-info
set suffixes+=.class

set wildignore+=__pycache__,*.egg-info,.pytest_cache,.mypy_cache/**


" JavaScript----------------------------------------

set wildignore+=**/node_modules/**


" Lua----------------------------------------

" Java----------------------------------------

set wildignore+=*.jar,*.class

" Julia----------------------------------------

" Swift----------------------------------------

" Objective-C----------------------------------------

set suffixes+=.obj

"✅ Software------------------------------------------------------------------

"✅ Emacs----------------------------------------


"✅ Vim----------------------------------------



"✅ Visual Studio Code--------------------


"✅ Visual Studio--------------------

"✅ Jetbrains PyCharm--------------------


"








