syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
set nocompatible
set ruler
set nohls
set nobackup
set incsearch
filetype on
"5）设置C/C++语言的具体缩进方式（以我的windows风格为例）：
"set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
colorscheme desert
"按F9开关自动缩进
set pastetoggle=<F9>

filetype plugin on
set omnifunc=syntaxcomplete#Complete

if &term=="xterm"
set t_Co=8
set t_Sb=^[[4%dm
set t_Sf=^[[3%dm
endif

set encoding=utf-8
"set langmenu=zh_CN.UTF-8
set langmenu=en_US.UTF-8
"language message zh_CN.UTF-8
try
	language message en_US.UTF-8
catch
endtry
set fileencodings=utf-8,gbk,big5

"map some key
"nmap <tab> V>
"nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv
nmap <C-j> gj
nmap <C-k> gk

map <C-F10> <Esc>:tabnew<CR>

