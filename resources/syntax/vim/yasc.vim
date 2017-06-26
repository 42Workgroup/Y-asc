" Vim syntax file
" Language: YASC
" Maintainer: Louis Solofrizzo
" Lastest Revision: 26/06/2017

" If a plugin already did coloration, quit
if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "yasc"

" Keywords
syn keyword yascBasic return if else while do for struct use def

" Types
syn keyword yascTypes bool u8 s8 ubyte u16 s16 u32 s32 void

" Specials keywords
syn keyword yascSpecials __const __static __heap

" Strings and Integers
syn region yascString start='"' end='"'
syn match yascInt '\d\+'
syn match yascInt '[-+]\d\+'
syn match yascInt '[-+]\d\+\.\d*'
syn match yascInt '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match yascInt '\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match yascInt '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match yascInt '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

" Todos
syn keyword yascTodo contained TODO FIXME XXX NOTE

" Comments
syn match yascComment "\/\*.*$"

hi! def link yascBasic        Statement
hi! def link yascTypes        Type
hi! def link yascSpecials     PreProc
hi! def link yascString       String
hi! def link yascInt          Constant
hi! def link yascTodo         Todo
hi! def link yascComment      Comment
