au BufRead,BufNewFile *.play* setf play
fun! PlayfountFoldexpr()
	let l:line = getline(v:lnum)
	if l:line =~ '^%' || getline(v:lnum+1) =~ '^%'
		return '0'
	endif
	let l:rx = '\v^\s*(INT. |EXT. |INT.\/EXT. |INT\/EXT. |ІНТ. |ЕКСТ. |ІНТ.\/ЕКСТ. |ІНТ\/ЕКСТ. |ИНТ. |ЭКСТ. |ИНТ.\/ЭКСТ. |ИНТ\/ЭКСТ. ).*$'
	return l:line =~# l:rx ? '>1' : '='
endfun
fun! PlayfountFoldtext()
	let l:scene = getline(v:foldstart)
	let l:n = v:foldend - v:foldstart + 1
	return printf("%5d § ", l:n) . l:scene
endfun

au FileType play setl noet sw=8 ts=16 tw=80
au FileType play setl foldmethod=expr
au FileType play setl foldexpr=PlayfountFoldexpr()
au FileType play setl foldtext=PlayfountFoldtext()
