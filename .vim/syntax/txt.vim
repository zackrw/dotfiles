" Vim syntax file
" Language:     Txt
" Maintainer:   Yi Zhao (ZHAOYI) <zzlinux AT hotmail DOT com>
" Last Change By: Marc Harter
" Last Change:  February 18, 2011
" Version:      0.7.9
" Changes:      Updates JSDoc syntax
"
" TODO:
"  - Add the HTML syntax inside the JSDoc

if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'txt'
endif

"" Drop fold if it is set but VIM doesn't support it.
let b:txt_fold='true'
if version < 600    " Don't support the old version
  unlet! b:txt_fold
endif

"" txt comments
syntax keyword txtKeywords TODO FIXME XXX TBD LOOKUP BOOKMARK NOTE

let b:current_syntax = "txt"
if main_syntax == 'txt'
  unlet main_syntax
endif

" vim: ts=4
