"{{{ Al system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.}}}

set nocompatible  "required

runtime! debian.vim

"vim-plug yyds
filetype plugin on
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree' "添加目录树
"Plug 'iamcco/mathjax-support-for-mkdp'
"Plug 'iamcco/markdown-preview.nvim',{ 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

"Vundle{{{
"在此设置运行时路径
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"在这里输入安装的插件
"Vundle 本身就是一个插件
"Plugin 'ztt/Vundle.vim'
"Plugin 'preservim/nerdtree'
"再安装youcompleteme ,我就是傻子

"所有插件都应该在这一行之前
"call vundle#end()
"filetype plugin indent on}}}



"{{{ Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.}}}
if has("syntax")
  syntax on
endif


" my configure innoremap{{{
inoremap jk <ESC>
"complete the code
inoremap jj <c-p>
inoremap /*  /* */<esc>hhi<space>
inoremap (  ()<esc>i
inoremap <<space>  <space><<space>
inoremap ><space><space>  <space>><space>
inoremap <=  <space><=<space>
inoremap >=  <space>>=<space>
inoremap )  ()<esc>a
inoremap ==  <space>==<space>
inoremap !=  <space>!=<space>
inoremap =<space>  <space>=<space>
inoremap +<space>  <space>+<space>
inoremap *<space>  <space>*<space>
inoremap -<space>  <space>-<space>
inoremap <<  <space><<<space>
inoremap >>  <space>>><space>
inoremap {<cr> {<cr>}<esc>O
inoremap += <space>+=<space>
inoremap -= <space>-=<space>
inoremap /= <space>/=<space>
inoremap *= <space>*=<space>
inoremap // //<space>
"}}}
    


let mapleader = "-"
"nnoremap <leader> <nop>
let maplocalleader = "\\"

"set configure{{{
"set guifont=Consolas:h18
"set encoding=utf-8
set number
set relativenumber
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set showmatch
set vb t_vb=
set ruler
set incsearch
set ignorecase
set smartcase
set scrolloff=3 "顶部和底部保持3行距离
set autochdir "自动切换目录
set cindent

"statusline
set laststatus=2 "always show the statusline
set statusline=%.15F   "path to the file
set statusline+=%m     "modified flag [+]or[-]
"set statusline+=%=  "switch to the right side
set statusline+=\    "path to the file
set statusline+=%15l  "current line
set statusline+=,%2c  "current column
set statusline+=/   "separator
set statusline+=%L  "Total lines
set statusline+=\ \ \  "separator
set statusline+=Filetype:   "tabel
set statusline+=%y   "type of file
set statusline+=\ \  "separator
set statusline+=%p%%   "type of file


set cursorline      "
"set cursorcolumn
set foldmethod=marker
set backspace=2 "解决backspace失效的问题
set completepopup=height:6,width:60 "设置补全窗口的大小
set autoread    "when file changed,read it again.


set wildmenu  
set completeopt=longest,menu
set wildmode=longest,list,full

"set sidescrolloff=20

"设置h,l,<backspace>,<space>在行首尾可以换行.
set whichwrap=b,s,h,l
"}}}

"nnoremap {{{
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"compile and run the current file
nnoremap <leader>r  :!g++ -g % && ./a.out<cr>

nnoremap H ^
nnoremap L g_
"zN<cr> can decide the height of the window
nnoremap <leader>j <c-w>j 
"定义-j 转到下一个屏幕
nnoremap <leader>k <c-w>k
"定义-k 转到下一个屏幕
nnoremap <leader>h <c-w>h 
"定义-h 转到左一个屏幕
nnoremap <leader>l <c-w>l
"定义-l 转到右一个屏幕
nnoremap <leader>- :vertical res -
"定义-- 减小分屏宽度
nnoremap <leader>+ :vertical res +
"定义-+ 增加分屏宽度 
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
"将所选的单词用"包围
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
"将所选的单词用'包围
nnoremap <leader>n :NERDTree<cr>
"打开目录树"

nnoremap <leader>w :w<cr>
"save file; you can also use ZZ

nnoremap <leader>q :wq<cr>
"save file and quit
"

nnoremap zh H
"移动cursor到当前窗口的top

nnoremap zl L
"移动cursor到当前窗口的bottom

"}}}

onoremap in( :<c-u>normal! f(vi)<cr>
onoremap in{ :<c-u>normal! f{vi}<cr>
onoremap in[ :<c-u>normal! f[vi]<cr>
onoremap in< :<c-u>normal! f<vi><cr>
onoremap in" :<c-u>normal! f"vi"<cr>

onoremap il( :<c-u>normal! F)vi(<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>
onoremap il[ :<c-u>normal! F]vi[<cr>
onoremap il< :<c-u>normal! F>vi<<cr>
onoremap il" :<c-u>normal! F"vi"<cr>


"vnoremap {{{

"用各种括号包围住选中的文本
vnoremap ( s()<esc>hp
vnoremap [ s[]<esc>hp
vnoremap { s{}<esc>hp
vnoremap " s""<esc>hp
vnoremap < s<><esc>hp

"注释
vnoremap / s/**/<esc>hhp    
"}}}



iabbrev @@ 3502104605@qq.com
iabbrev whiel while
iabbrev nad and
iabbrev pirntf printf
iabbrev stirng string

"自动命令{{{

"quick input
"augroup quick_input
"    autocmd!
"
"    "快速输入endl;
"    autocmd BufRead,BufWrite *.h,*.cc inoremap <buffer> <space>f <space><<<space>endl;<esc>o
"
"augroup end


"注释
augroup comment
    autocmd!
    autocmd FileType cpp,c nnoremap <buffer> <space><space> I//<esc>
    autocmd FileType cpp,c nnoremap <buffer> <space>j ^xx
    autocmd FileType cpp,c noremap <buffer> <space> s/**/<esc>hhp


    autocmd FileType vim nnoremap <buffer> <space><space> I"<esc>
    autocmd FileType vim nnoremap <buffer> <space>j ^x
    "autocmd FileType c setlocal nonumber
    autocmd FileType python nnoremap <buffer> <space><space> I#<esc>
    autocmd FileType python nnoremap <buffer> <space>j ^x
augroup end

"为vim脚本文件设置自动折叠
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup end

"打开文件时光标定位到上一次的位置
augroup cursor_position
    autocmd!
    autocmd BufReadPost * if line("'\"")>1 && line("'\"")<=line("$") | exe"normal! g'\"" | endif
    "  '" means to the cursor position when last exiting 
    "  the current buffer.
augroup end
"}}}

"{{{func! C_CompileRun( )
"    exec "w"
"    exec "!"
"

func SkipPair()  
    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'  
        return "\<ESC>la"  
    else  
        return "\t"  
    endif  
endfunc 
" 将tab键绑定为跳出括号
inoremap <TAB> <c-r>=SkipPair()<CR>
"
""设置= + - * 前后自动空格
""设置，后面自动添加空格
"if exists("g:equ")
":inoremap = <c-r>=EqualSign('=')<CR>
":inoremap + <c-r>=EqualSign('+')<CR>
":inoremap - <c-r>=EqualSign('-')<CR>
":inoremap * <c-r>=EqualSign('*')<CR>
":inoremap / <c-r>=EqualSign('/')<CR>
":inoremap > <c-r>=EqualSign('>')<CR>
":inoremap < <c-r>=EqualSign('<')<CR>
":inoremap , ,<space>
"endif
"
"
"function! EqualSign(char)
"if a:char  =~ '='  && getline('.') =~ ".*("
"return a:char
"endif 
"let ex1 = getline('.')[col('.') - 3]
"let ex2 = getline('.')[col('.') - 2]
"
"
"if ex1 =~ "[-=+><>\/\*]"
"if ex2 !~ "\s"
"return "\<ESC>i".a:char."\<SPACE>"
"else
"return "\<ESC>xa".a:char."\<SPACE>"
"endif 
"else
"if ex2 !~ "\s"
"return "\<SPACE>".a:char."\<SPACE>\<ESC>a"
"else
"return a:char."\<SPACE>\<ESC>a"
"endif 
"endif
"endif
"endfunction

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available}}}
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
