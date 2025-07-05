" 不与 Vi 兼容 (采用 Vim 自己的操作命令)
set nocompatible
" 打开语法高亮。自动识别代码，使用多种颜色显示
syntax on

" 使用UTF-8编码
set encoding=utf-8
" 启用256色
set t_Co=256
" 开启文件类型检查，并且载入与该类型对应的缩进规则
filetype indent on


" 显示行号
set number
" 显示相对行号
set relativenumber
" 设置 Tab 键的宽度为4个空格
set tabstop=4
" 设置软制表符宽度为4个空格
set softtabstop=4
" 设置自动缩进
set autoindent
" 设置自动缩进时的宽度为4个空格
set shiftwidth=4
" 该设置自动将 Tab 转为空格
set expandtab

" 设置鼠标模式。即支持鼠标操作
set mouse=a
" 突出显示当前光标所在的行
set cursorline
" 显示光标当前位置的行号和列号
set ruler
" 显示当前Vim的工作模式在屏幕的左下角
set showmode
" 设置行宽，即一行显示多少个字符
set textwidth=80
" 自动折行，即太长的行分成几行显示
set wrap
" 只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行
set linebreak
" 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示
set laststatus=2
" 从不备份
set nobackup

" 命令模式下，在底部显示，当前键入的指令
set showcmd
" 设置编辑器的背景色为深色，以适应暗色主题
set bg=dark
" 搜索时，高亮显示匹配结果
set hlsearch
" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch

" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set showmatch

" 打开英语单词的拼写检查
set spell spelllang=en_us


" 出错时，不要发出响声
set noerrorbells
" 出错时，发出视觉提示，通常是屏幕闪烁
set visualbell
" Vim 需要记住多少次历史操作
set history=300
" 打开文件监视。如果在编辑过程中文件发生外部改变(比如被别的编辑器编辑了)，就会发出提示。设置当文件被改动时自动载入
set autoread


"""""""""""""""""""""
" Keyboard mapping 键盘映射
"""""""""""""""""""""
imap jk <Esc>
nmap <Space> :

