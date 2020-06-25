let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0


" let g:pandoc#modules#enabled = [
"    \ "formatting", "folding", "bibliographies", "completion","metadata", "menu", "executors", "keyboard", "toc", "spell", "hypertext"]
let g:pandoc#modules#disabled = ["folding"]


" let g:pandoc#command#autoexec_command = "Pandoc! pdf"





let g:pandoc#after#modules#enabled = ["nrrwrgn", "ultisnips"]


if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.pandoc =
    \ '@'
