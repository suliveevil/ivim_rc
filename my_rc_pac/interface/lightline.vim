let g:lightline.enable.tabline = 0

		let g:lightline.active = {
		    \ 'left': [ [ 'mode', 'paste' ],
		    \           [ 'readonly', 'filename', 'modified' ] ],
		    \ 'right': [ [ 'charvalue' ],[ 'line' ],[ 'percent' ],
		    \            [ 'fileformat', 'fileencoding', 'filetype' ] ] }
		let g:lightline.inactive = {
		    \ 'left': [ [ 'filename' ] ],
		    \ 'right': [ [ 'lineinfo' ],
		    \            [ 'percent' ] ] }
