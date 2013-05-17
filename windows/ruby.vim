" Ruby syntax file for Vim
" Maintained by Alexander Kitaev
if exists("b:current_syntax")
	finish
endif

syn keyword	rbBlock		do begin end if elif else
syn keyword	rbLoop		while for
syn keyword	rbFunction	def return
syn keyword	rbException	try raise catch rescue
syn keyword	rbClass		class public protected private
syn keyword	rbConstant	nil self __line__ __file__ __RUBY_VERSION__
syn keyword	rubyBool	true false
syn keyword	rbTodo		contained TODO FIXME XXX
syn keyword	rbClassFunc	new initialize
syn keyword	rbAPIClass	String Hash Array SMTP Bignum Class Exception Dir
syn keyword	rbAPIClass	File Integer IO Method Module Numeric Object Range
syn keyword	rbAPIClass	Regexp Struct Symbol Thread ThreadGroup TrueClass
syn keyword	rbRequire	require
syn match	rubyInteger	"\v[\+-]\?[0123456789]\+"
syn match	rubyFloat	"\v[\+-]\?[0123456789]\+\.[0123456789]\+"
syn match	rubyChar	"\v\'.\'"
syn match	rbOperator	"\v\=>"
syn match	rbOperator	"\v\."
syn match	rbOperator	"\v[\[\]]"
syn match	rbOperator	"\v[\+\-&|]{2}"
syn match	rbOperator	"\v[\+\-\*/&|^]\=?"
syn match	rbComment	"\v\#.*$" contains=rbTodo
syn match	rbInstVar	"\v \@.\+"
syn match	rbClassVar	"\v \@\@.\+"
syn match	rbToken		"\v:.\+"
syn match	rbClassDecl	"\vclass +\w+$"
syn match	rbFuncDecl	"\vdef +\w+$"
syn match	rbBadName	"\v[\$\@]\?[\@]\?\(\w*\W\+\)*"
syn region	rbMlComment	start=/=begin$/ end=/=end$/ contains=rbTodo
syn region	rb2QString	start=/"/ skip=/\\./ end=/"/
syn region	rb1QString	start=/'/ skip=/\\./ end=/'/

hi def link rbMlComment	Comment
hi def link rb2QString	String
hi def link rb1QString	String
hi def link rbBlock	Conditional
hi def link rbLoop	Repeat
hi def link rbFunction	Keyword
hi def link rbException	Exception
hi def link rbClass	Keyword
hi def link rbBool	Boolean
hi def link rbTodo	Todo
hi def link rbClassFunc	Function
hi def link rbAPIClass	Type
hi def link rbRequire	PreProc
hi def link rbInteger	Number
hi def link rbFloat	Number
hi def link rbChar	Character
hi def link rbOperator	Operator
hi def link rbComment	Comment
hi def link rbConstVar	Constant
hi def link rbInstVar	Identifier
hi def link rbClassVar	Identifier
hi def link rbToken	Label
hi def link rbClassDecl	Typedef
hi def link rbFuncDecl	Function
hi def link rbBadName	Error

let b:current_syntax = "ruby"