" Vim syntax file
" Language: Playfount- Fountain playwriting dialect
" File: .play .playft .pl
" Reference: http://fountain.io/
" Maintainer: Ilya Kowalewski <ilya@hrest.org>
" Last Change: 26 August 2022
" Version: 2.04

if exists("b:current_syntax")
  finish
endif

syn sync minlines=200

syn region playfountBold		matchgroup=playfountBolds
					\ start="\*" skip="\\\*" end="\*"
					\ concealends
syn region playfountItalic		matchgroup=playfountItalics
					\ start="_" skip="\\\*" end="_"
					\ concealends
syn region playfountParenthetical	start="^\s\+(" end=")$"
syn region playfountCentered		start="> " end=" <$"
					\ matchgroup=playfountCharacter
syn region playfountBoneyard		start="/\*" end="\*\/"
					\ contains=playfountCont
syn region playfountBackground		start="\[\[" end="\]\]"
					\ contains=playfountCont,playfountRead,playfountWrite

syn match playfountTitle		"^\s*%\s*.*$"
syn match playfountDescription		"^\s*%%\s*.*$"
					" english
syn match playfountScene		"\v^\s*(INT. |EXT. |INT.\/EXT. |INT\/EXT. )(.*\ze( #(\L|-)*#)|.*$)"
					" ukrainian
syn match playfountScene		"\v^\s*(ІНТ. |ЕКСТ. |ІНТ.\/ЕКСТ. |ІНТ\/ЕКСТ. )(.*\ze( #(\L|-)*#)|.*$)"
					" russian
syn match playfountScene		"\v^\s*(ИНТ. |ЭКСТ. |ИНТ.\/ЭКСТ. |ИНТ\/ЭКСТ. )(.*\ze( #(\L|-)*#)|.*$)"
syn match playfountSceneNumber		"\v#(\L|-)*#"
syn match playfountCharacter		"\v^\t\t(\L)+$"
syn match playfountTransition		"^\s*\L* \(К\|TO\)\(.*\)\?:$"
syn match playfountTransition		"^\s*> .*<\@<!$"
syn match playfountLyric		"^\s*\~ .*$"
syn match playfountSynopses		"^\s*= .*$"
syn match playfountPagebreak		"^===[=]*$"
syn match playfountH1			"^# .*$"
syn match playfountH2			"^## .*$"
syn match playfountH3			"^### .*$"
syn match playfountH4			"^#### .*$"
syn match playfountH5			"^##### .*$"
syn match playfountH6			"^###### .*$"
syn match playfountCont			"\\$" contained
syn match playfountRead			"\[\[\zs->" contained
syn match playfountWrite		"\[\[\zs<-" contained

hi playfountBackground			guifg=darkgreen
hi playfountBold			gui=bold
hi playfountBoldbg			gui=bold,italic guibg=white guifg=black
hi playfountItalic			gui=italic
hi playfountCentered			gui=bold,italic,underline
hi playfountScene			gui=bold,underline
hi playfountSceneNumber			gui=bold,italic
hi playfountCharacter			gui=bold
hi playfountParenthetical		gui=italic guifg=darkgray
hi def link playfountRead		playfountBoldbg
hi def link playfountWrite		playfountBoldbg
hi def link playfountTitle		title
hi def link playfountDescription	statement
hi def link playfountTransition		todo
hi def link playfountLyric		number
hi def link playfountSynopses		number
hi def link playfountPagebreak		conditional
hi def link playfountBoneyard		nontext
hi def link playfountH1			htmlH1
hi def link playfountH2			htmlH2
hi def link playfountH3			htmlH3
hi def link playfountH4			htmlH4
hi def link playfountH5			htmlH5
hi def link playfountH6			htmlH6

let b:current_syntax = "play"
