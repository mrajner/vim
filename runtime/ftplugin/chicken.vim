" CHICKEN-specific Vim customizations
" Last Change: 2018-01-06
" Author: Evan Hanson <evhan@foldling.org>
" Maintainer: Evan Hanson <evhan@foldling.org>
" URL: https://foldling.org/vim/ftplugin/chicken.vim
" Notes: These are supplemental settings, to be loaded after the core
" Scheme ftplugin file (ftplugin/scheme.vim). Enable it by setting
" b:is_chicken=1 and filetype=scheme.

if !exists('b:did_scheme_ftplugin')
  finish
endif

setl keywordprg=chicken-doc

setl lispwords+=and-let*
setl lispwords+=begin-for-syntax
setl lispwords+=compiler-typecase
setl lispwords+=condition-case
setl lispwords+=define-compiler-syntax
setl lispwords+=define-constant
setl lispwords+=define-external
setl lispwords+=define-for-syntax
setl lispwords+=define-inline
setl lispwords+=define-record
setl lispwords+=define-record-printer
setl lispwords+=define-specialization
setl lispwords+=define-syntax-rule
setl lispwords+=eval-when
setl lispwords+=fluid-let
setl lispwords+=handle-exceptions
setl lispwords+=let-compiler-syntax
setl lispwords+=let-optionals
setl lispwords+=let-optionals*
setl lispwords+=letrec-values
setl lispwords+=match
setl lispwords+=match-lambda
setl lispwords+=match-lambda*
setl lispwords+=match-let
setl lispwords+=match-let*
setl lispwords+=module
setl lispwords+=receive
setl lispwords+=select
setl lispwords+=set!-values

let b:undo_ftplugin = b:undo_ftplugin . ' keywordprg<'

if exists('g:loaded_matchit') && !exists('b:match_words')
  let b:match_words = '#>:<#'
  let b:undo_ftplugin = b:undo_ftplugin . ' | unlet! b:match_words'
endif
