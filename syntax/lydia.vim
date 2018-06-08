" Vim syntax file
" Language: Lydia
" Author: Tim Morgan <tim@timmorgan.org>

if exists("b:current_syntax")
  finish
endif

setlocal autoindent

syntax match lidFuncDelimiter /{\|}/
syntax match lidComment /#.*/ contains=@Spell,lidTodo
syntax match lidIdentifier /[a-z0-9\-]\+/
syntax keyword lidTodo TODO FIXME XXX contained
syntax keyword lidKeyword out if
syntax match lidOp /[\-~:!?@$%^&*_+|\/.<>=]\+/
syntax match lidNum /[0-9]\+/
syntax region lidString start=/"/ skip=/\\\\\|\\"/ end=/"/
syntax region lidString start=/'/ skip=/\\\\\|\\'/ end=/'/

highlight link lidFuncDelimiter Delimiter
highlight link lidComment Comment
highlight link lidAssign Identifier
highlight link lidTodo Todo
highlight link lidKeyword Keyword
highlight link lidIdentifier Identifier
highlight link lidOp Statement
highlight link lidNum Number
highlight link lidString String

let b:current_syntax = "lydia"
