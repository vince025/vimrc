if has("syntax")
	"语法高亮
	syntax on
endif
set tabstop=4
set softtabstop=4
set shiftwidth=4
"自动缩进
set autoindent
set smartindent
set cindent
set nocompatible
"显示行号
"set number
"在状态栏显示当前行列号
set ruler
"在状态栏显示正在输入的命令
set showcmd
set nohls
set nobackup
set incsearch
"设置backspace可用
set backspace=2
"整词换行
set linebreak
set showcmd
set showmode
"打开和关闭括号高亮
"DoMatchParen
"NoMatchParen
"代码折叠
set foldmethod=syntax
set foldlevel=99
"显示匹配模的字符串
"set showmatch
" 搜索模式里忽略大小写
"set ignorecase
"如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
"set smartcase
" 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
"set autowrite

"detect file type
filetype on
"5）设置C/C++语言的具体缩进方式
"set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
colorscheme desert

filetype plugin on
set omnifunc=syntaxcomplete#Complete

if has("autocmd")
	""NERDTree配置
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
endif
set tags+=~/.vim/*.tags

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

"缩进键映射
"map some key
"nmap <tab> V>
"nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv
nmap <C-j> gj
nmap <C-k> gk
map <F12> :NERDTreeToggle<CR>
"函数折叠
nmap <F11> :TagbarToggle<CR>
map <F10> za
"按F9开关自动缩进
set pastetoggle=<F9>
"map <F7> :make<CR>
"显示与关闭行号
"map <F5> :set nu!<CR>
"新建空文件映射
"nmap <C-n> :tabnew<CR>
"插入文件头信息
map :mit :0r ~/.vim/mit.txt
"插入函数说明
map :fh :r ~/.vim/fh.txt
