syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
colorscheme desert
set fileencodings=gbk,utf8
set encoding=utf-8

set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin
set langmenu=none
try
	lang en_US
catch
endtry
lang mes en_US

"windows
if has("gui_running") && has("win32")
set mouse=""
set guioptions-=T  "È¥µô¹¤¾ßÌõ
set guioptions-=m " Òþ²Ø²Ëµ¥À¸
set guioptions-=L " Òþ²Ø×ó²à¹ö¶¯Ìõ
"set guioptions-=r " Òþ²ØÓÒ²à¹ö¶¯Ìõ
set guioptions-=b " Òþ²Øµ×²¿¹ö¶¯Ìõ
"set showtabline=0 " Òþ²ØTabÀ¸
endif

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

