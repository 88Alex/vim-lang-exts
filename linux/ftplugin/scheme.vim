" Scheme syntax file for Vim
" Written by Alexander Kitaev

if exists("b:current_syntax")
	finish
endif

syn match	scmBlock	"\v(\(|\))"
syn match	scmComment	"\v;;;.*$"
syn match	scmComment	"\v;.*$"
syn match	scmInteger	"\v[\+-]\?[0123456789]\+"
syn match	scmDecimal	"\v[\+-]\?[0123456789]\+\.[0123456789]\+"
syn match	scmBoolean	"\v\#[TF]"
syn region	scmString	start=/\v\"/ skip=/\v\\./ end=/\v\"/

syn keyword	scmMathFunc	max min magnitude modulo quotient remainder gcd

syn keyword	scmCompFunc	eqv or not and integer real string zero positive
syn keyword	scmCompFunc	negative string

syn keyword	scmListFunc	quote car cdr const list length append reverse null

syn keyword	scmMiscFunc	if display read exit cond define

hi def link	scmBlock	Special
hi def link	scmComment	Comment
hi def link	scmInteger	Integer
hi def link	scmDecimal	Float
hi def link	scmBoolean	Boolean
hi def link	scmString	String
hi def link	scmMathFunc	Function
hi def link	scmCompFunc	Function
hi def link	scmListFunc	Function
hi def link	scmMiscFunc	Function

let b:current_syntax = "scheme"