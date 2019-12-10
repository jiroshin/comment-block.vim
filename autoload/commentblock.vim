scriptencoding utf-8

if !exists('g:loaded_commentblock')
  finish
endif
let g:loaded_commentblock = 1

let s:save_cpo = &cpo
set cpo&vim

let s:configured_comment_length = get(g:, 'comment_length', 60)

let s:sharp_fts = ['toml', 'zsh', 'sh', 'bash', 'rb']
let s:double_quotation_fts = ['vim']

function! commentblock#insertCommentBlock()
  filetype plugin indent on
  set formatoptions-=o
  set formatoptions-=r

  let s:num = s:configured_comment_length
  let s:total = 0
  let s:line = ''
  let s:space = ''
  while s:total < s:num
    let s:line = s:line.'-'
    let s:space = s:space.' '
    let s:total += 1
  endwhile

  if index(s:sharp_fts, &ft) != -1
    execute ":normal a" ."#".s:line."#\n#".s:space."#\n#".s:line."#"
  elseif index(s:double_quotation_fts, &ft) != -1 
    execute ":normal a" ."\"".s:line."\"\n\"".s:space."\"\n\"".s:line."\""
  endif

  set formatoptions+=o
  set formatoptions+=r
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
