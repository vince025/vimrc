set tabstop=4
set softtabstop=4
"              2）设置缩进的空格数为4
set shiftwidth=4
"              3）设置自动缩进：即每行的缩进值与上一行相等；使用 noautoindent 取消设置：
set autoindent
"              4）设置 使用 C/C++ 语言的自动缩进方式：
set cindent
"              5）设置C/C++语言的具体缩进方式（以我的windows风格为例）：
"set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
"              6）如果想在左侧显示文本的行号，可以用以下语句：
set nu
"set roler 设置光标显示
"            7）最后，如果没有下列语句，就加上吧：
"按F9开关自动缩进
set pastetoggle=<F9>
if &term=="xterm"
set t_Co=8
set t_Sb=^[[4%dm
set t_Sf=^[[3%dm
endif

set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=utf-8,gbk,big5
