"call pathogen#infect()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/majutsushi/tagbar.git'
"Plugin 'https://github.com/fholgado/minibufexpl.vim.git'
"Plugin 'winmanager'
Plugin 'https://github.com/vim-airline/vim-airline.git'
"Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'https://github.com/artur-shaik/vim-javacomplete2.git'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
" 语法高亮

autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
" 用浅色高亮当前行

set smartindent
" 智能对齐

set autoindent
" 自动对齐

set confirm
" 在处理未保存或只读文件的时候，弹出确认

set tabstop=4
" Tab键的宽度

set softtabstop=4
set shiftwidth=4
"  统一缩进为4

" set noexpandtab
" 不要用空格代替制表符

set number
" 显示行号

set history=50
" 历史纪录数

set hlsearch
set incsearch
" 搜索逐字符高亮

set gdefault
" 行内替换

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1
" 编码设置

"colorscheme solarized
colorscheme monokai
"colorscheme torte
" 设置颜色主题

"set guifont=Menlo:h16:cANSI
" 设置字体

set langmenu=zn_CN.UTF-8
set helplang=cn
" 语言设置

set cmdheight=2
" 命令行（在状态行）的高度，默认为1,这里是2

set ruler
" 在编辑过程中，在右下角显示光标位置的状态行

set laststatus=2
" 总是显示状态行

set showcmd
" 在状态行显示目前所执行的命令，未完成的指令片段亦会显示出来

set scrolloff=3
" 光标移动到buffer的顶部和底部时保持3行距离

set showmatch
" 高亮显示对应的括号

set matchtime=5
" 对应括号高亮的时间（单位是十分之一秒）

set autowrite
" 在切换buffer时自动保存当前文件

set wildmenu
" 增强模式中的命令行自动完成操作

set linespace=2
" 字符间插入的像素行数目

set whichwrap=b,s,<,>,[,]
" 开启Normal或Visual模式下Backspace键，空格键，左方向键，右方向键，Insert或replace模式下左方向键，右方向键跳行的功能。

filetype plugin indent on
" 分为三部分命令：file on, file plugin on, file indent on.分别表示自动识别文件类型，用文件类型脚本，使用缩进定义文件。

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree 
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'https://github.com/scrooloose/nerdtree.git'

map <F1> :NERDTreeToggle<CR>
map <C-F1> :NERDTreeFind<CR>
let NERDTreeChDirMode=2 "选中root即设置为当前目录
" let NERDTreeQuitOnOpen=1 "打开文件时关闭树
let NERDTreeShowBookmarks=1 "显示书签
let NERDTreeMinimalUI=1 "不显示帮助面板
let NERDTreeDirArrows=1 "目录箭头 1 显示箭头 0传统+-|号
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
autocmd VimEnter * NERDTree " 自动打开树
wincmd w "切换编辑区域
autocmd VimEnter * wincmd w

" Automatically open a NERDTree if no files where specified
"autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F12> :TagbarToggle<CR>
map! <F12> <Esc>:TagbarToggle<CR>
"let g:tagbar_vertical = 30
"let g:tagbar_expand = 1
"let g:tagbar_foldlevel = 2
"let g:tagbar_autoshowtag = 1

"let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
"let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => winManager
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MiniBufExplorer
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => javacomplete2
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setlocal omnifunc=javacomplete#Complete
"autocmd Filetype java set omnifunc=javacomplete#Complete                        "这一句是自动补全（好像是）
"autocmd Filetype java set completefunc=javacomplete#CompleteParamsInf  " 这一句是参数提示，好像不太好用，
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P> 
"inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>
"autocmd FileType java,javascript,jsp inoremap <buffer> . .<C-X><C-O><C-P>
