" Vim syntax file
" Language: Lidija
" Author: Tim Morgan <tim@timmorgan.org>

if exists("b:current_syntax")
  finish
endif

setlocal autoindent

syntax region lidFunc matchgroup=lidFuncDelimiter start=/{/ms=e end=/}/
syntax match lidAssign /[a-z0-9]\+\s\+=\s\+/ contains=lidIdentifier
syntax match lidFuncDelimiter /{\|}/
syntax match lidComment /#.*/ contains=@Spell,lidTodo
syntax match lidIdentifier contained /[a-z0-9]\+/
syntax keyword lidTodo TODO FIXME XXX contained
syntax keyword lidKeyword out
syntax match lidOp /[\-~:!?@$%^&*_+|\/.<>]/
syntax match lidNum /[0-9]\+/
syntax region lidString start=/"/ skip=/\\\\\|\\"/ end=/"/
syntax region lidString start=/'/ skip=/\\\\\|\\'/ end=/'/

highlight link lidFunc Function
highlight link lidFuncDelimiter Delimiter
highlight link lidComment Comment
highlight link lidAssign Identifier
highlight link lidTodo Todo
highlight link lidKeyword Keyword
highlight link lidIdentifier Identifier
highlight link lidOp Statement
highlight link lidNum Number
highlight link lidString String

let b:current_syntax = "lidija"
