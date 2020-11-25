" Vim syntax file
" Language:	Playfount screenplay
" File: .play
" Reference: http://fountain.io/
" Maintainer: Ian P Badtrousers <badt@veritas.icu>
" Last Change: November 19, 2020
" Version: 2.02

if exists("b:current_syntax")
  finish
endif
syn sync minlines=200

syn region playfountBold start="\*" skip="\\\*" end="\*"
syn region playfountItalic start="_" skip="\\\*" end="_"
syn region playfountCentered matchgroup=playfountCenter start="^\s*> " end=" <$"

syn match playfountTitle "^\s*%\s*.*$"
syn match playfountDescription "^\s*%%\s*.*$"
syn match playfountScene "^\s*\(INT\. \|EXT\. \|INT\./EXT\. \|INT/EXT\. \).*$"
syn match playfountScene "^\s*\(ИНТ\. \|ЭКСТ\. \|ИНТ\./ЭКСТ\. \|ИНТ/ЭКСТ\. \).*$"
syn match playfountCharacter "^\s*[A-ZА-ЯЁё0-9][A-ZА-ЯЁё0-9\-\– ]*$"
syn match playfountParenthetical "(.*)"
syn match playfountTransition "^\s*\L* \(К\|TO\):$"
syn match playfountTransitionForced "^\s*> .*<\@<!$"
syn match playfountLyric "^\s*\~ .*$"
syn match playfountSynopses "^\s*= .*$"
syn match playfountPagebreak "^===[=]*$"
syn match playfountCont "\\$" contained
syn match playfountH1 "^# .*$"
syn match playfountH2 "^## .*$"
syn match playfountH3 "^### .*$"
syn match playfountH4 "^#### .*$"
syn match playfountH5 "^##### .*$"
syn match playfountH6 "^###### .*$"

" dialogue begins either directly after a playfountCharacter
syn region playfountDialogue matchgroup=playfountParenthetical
	\ start="(.*)$" end="^\s*$"
" or playfountParenthetical
syn region playfountDialogue matchgroup=playfountCharacter
	\ start="^\s*[A-ZА-ЯЁё0-9][A-ZА-ЯЁё0-9\-\– ]*$" end="^\s*$"
syn region playfountBoneyard start="/\*" end="\*\/" contains=playfountCont
syn region playfountNotes start="\[\[" end="\]\]" contains=playfountCont

hi def link playfountTitle				title
hi def link playfountDescription		statement
hi def link playfountScene				title
hi def link playfountCharacter			identifier
hi def link playfountDialogue			statement
hi def link playfountParenthetical		function
hi def link playfountTransition			todo
hi def link playfountTransitionForced	todo
hi def link playfountLyric				comment
hi def link playfountPagebreak			conditional
hi def link playfountNotes				comment
hi def link playfountBoneyard			nontext
hi def link playfountH1					htmlH1
hi def link playfountH2					htmlH2
hi def link playfountH3					htmlH3
hi def link playfountH4					htmlH4
hi def link playfountH5					htmlH5
hi def link playfountH6					htmlH6
hi def link playfountSynopses			number

hi playfountItalic		gui=italic cterm=italic
hi playfountBold		gui=bold cterm=bold
hi playfountCentered	gui=bold,italic,underline cterm=bold,italic
hi playfountScene		gui=bold,underline

let b:current_syntax = "playft"