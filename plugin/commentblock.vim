scriptencoding utf-8

if exists('g:loaded_commentblock')
  finish
endif
let g:loaded_commentblock = 1

let s:save_cpo = &cpo
set cpo&vim

command! Commentblock :call commentblock#insertCommentBlock()

let &cpo = s:save_cpo
unlet s:save_cpo
