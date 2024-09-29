" Vim syntax file
" Language:	generic configure file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2005 Jun 20

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword	confTodo	contained TODO FIXME XXX
" Avoid matching "text#text", used in /etc/disktab and /etc/gettytab
syn match	confComment	"^#.*" contains=confTodo
syn match	confComment	"\s#.*"ms=s+1 contains=confTodo
syn region	confString	start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
"syn region	confString	start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline
syn region	confString	start=+ '+ skip=+\\\\\|\\'+ end=+\>'+ oneline keepend

"mark file pathes as link
hi def link dir_link Comment
highlight dir_link  guifg=lightskyblue guibg=black gui=underline 
syn region	dir_link	start=+/+ end=+ \|$+ oneline

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link confComment	Comment
hi def link confTodo	Todo
hi def link confString	String

let b:current_syntax = "conf"

highlight myTodo  guifg=red    guibg=darkblue
highlight myMsg   guifg=red    guibg=yellow
highlight logMsgI guifg=green  guibg=black
highlight logMsgW guifg=orange guibg=black
highlight logMsgE guifg=red    guibg=black
 
syntax match logMsgI /^-I-/ 
syntax match logMsgW /^-W-/ 
syntax match logMsgE /^-E-/ 

syntax match myTodo /FIXME/ 
syntax match myTodo /FIXME:/ 
syntax match myTodo /CHECKME/ 
syntax match myTodo /CHECKME:/ 
syntax match myTodo /TODO/ 
syntax match myTodo /TODO:/ 
syntax match myTodo /XXX/ 
syntax match myTodo /XXX:/ 
syntax match myMsg /Warning/ 
syntax match myMsg /warning/ 
syntax match myMsg /Error/ 
syntax match myMsg /ERROR/ 
syntax match myMsg /error/ 
syntax match myMsg /Fatal/ 
syntax match myMsg /fatal/ 
syntax match myMsg /OVM_FATAL/ 
syntax match myMsg /OVM_ERROR/ 
syntax match myMsg /OVM_INFO/ 
syntax match myMsg /OVM_WARNING/ 

" vim: ts=8 sw=2
