au BufRead,BufNewFile *.play set filetype=playft

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
	return printf("%4d § ", l:n) . l:scene
endfun
au FileType playft set foldmethod=expr
au FileType playft set foldexpr=PlayfountFoldexpr()
au FileType playft set foldtext=PlayfountFoldtext()
