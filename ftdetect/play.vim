au BufRead,BufNewFile *.play* setf play

fun PlayfountFoldexpr()
	let l:line = getline(v:lnum)
	if l:line =~ '^%' || getline(v:lnum+1) =~ '^%'
		return '0'
	endif
	let l:rx = '^\(ИНТ\. \|ЭКСТ\. \|ИНТ\./ЭКСТ\. \|ИНТ/ЭКСТ\. \|INT\. \|EXT\. \|INT\./EXT\. \|INT/EXT\. \).*$'
	return l:line =~# l:rx ? '>1' : '='
endfun
fun PlayfountFoldtext()
	let l:scene = getline(v:foldstart)
	let l:n = v:foldend - v:foldstart + 1
	return printf("%5d § ", l:n) . l:scene
endfun
au FileType play set foldmethod=expr
au FileType play set foldexpr=PlayfountFoldexpr()
au FileType play set foldtext=PlayfountFoldtext()
