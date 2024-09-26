"-------------------------------------------
" Global
"-------------------------------------------
set nocompatible "enable GVIM advanced capabilities (must be the first option in the file)
set runtimepath=/nfs/site/disks/home_user/amizrah1/.vim,$VIMRUNTIME
let g:loaded_matchparen = 1

"-------------------------------------------
" Text, Tabs and Indent
"-------------------------------------------
set shiftwidth=4       "Set the number of space characters inserted for indentation.
set shiftround         "Round indent to multiple of 'shiftwidth'.
set autoindent         "Keep indentation level from previous line
set smartindent        "Do smart autoindenting when starting a new line.
set expandtab          "Insert space characters whenever the <TAB> key is pressed.
set tabstop=4          "Set the number of space characters that will be inserted when the <TAB> key is pressed
set softtabstop=0      "Sets the length of soft tab in spaces
set smarttab           "a <Tab> in front of a line inserts blanks according to 'shiftwidth'.
set nofoldenable       "leave all folds opened

"-------------------------------------------
" Display & GUI
"-------------------------------------------
set ruler              " Show the line and column number of the cursor position, separated by a	comma. 
set number             " Show line numbers
set relativenumber     " Show relative line numbers
set nowrap             " Lines longer than the width of the window won't be wrapped to the next line.
set linebreak          " Wrap long lines at a character in 'breakat' rather	than at the last character that fits on the screen.
set textwidth=0        " Maximum width of text that is being inserted. A longer line will be broken after white space to get this width. 
set noequalalways      " Splitting a window will reduce the size of the current window and leave the other windows the same.
set winminheight=0     " Set the minimal height of a window to '0', when it's not the current window.
set winminwidth=0      " Set the minimal width of a window to '0', when it's not the current window.
set title              " the title of the window will be set to the value of 'titlestring' (if it is not empty), or to: filename [+=-] (path) - VIM
set titlelen=70        " the title length
set titlestring=%t%m   " the title of the window will be set to the active file name (tail).
set hidden             " Enable switching buffers without saving 
set cursorline         " Highlight the screen line of the cursor with CursorLine definitions.
set showmode           " shows in the bottom line which mode the editor is (Insert/Replace/Visual)

" Set extra options when running in GUI mode
if has("gui_running")
    set t_Co=256
    "tab label will be shown as: tail of file name (%t), max 50 characters (%-0.50t), show Modified flag (%M) as '+' or '-' in tab name. 
    set guitablabel=%-0.50t\ %M
    set toolbar+=icons     "shown toolbar with icons
    set guioptions+=a  "auto copy of selected text (into '+' register)
    set guioptions+=g  "Colorize with grey menu items that are not active.
    set guioptions+=m  "menu bar
    set guioptions-=T  "remove toolbar
    set guioptions+=b  "Bottom (horizontal) scrollbar is present.
    set guioptions+=r  "right-hand scroll bar
    set guioptions+=L  "Left-hand scrollbar is present when there is a vertically split window.
    set guioptions+=e  "Add a nice tab toolbar when opening tabs
endif

"-------------------------------------------
" Plugins
"-------------------------------------------
" Enable filetype plugins
filetype plugin on
filetype indent on

let mapleader=" "

"------------------------
" copilot enablement
"------------------------
set runtimepath^=~/.vim/pack/github/start/copilot.vim

"------------------------
" mini buffer window size
"------------------------
let g:miniBufExplVSplit =  0 
let g:miniBufExplBuffersNeeded = 1
nmap <M-k>    :bN<cr>
nmap <M-j>    :bn<cr>
nmap <M-UP>   :bN<cr>
nmap <M-DOWN> :bn<cr>

" #################################################
" Colors for search
" LIST OF AVAILABLE COLORS - $VIMRUNTIME/rgb.txt
" ################################################
let g:MultipleSearchMaxColors         = 12 
let g:MultipleSearchColorSequence     = "'#292522', '#292522', '#292522', '#292522', '#292522', '#292522', '#292522', '#292522', '#292522', '#292522', '#292522', '#292522'," 
let g:MultipleSearchTextColorSequence = "deeppink, Gold,  lime,  DeepSkyBlue, Fuchsia, Aqua,  OrangeRed, Blue,  Maroon, BlueViolet, LightPink, DimGray"   

"-------------------------------------------
" Search
"-------------------------------------------
set wildmode=list:longest
set wildignorecase
set ignorecase  "ignore case in search
set smartcase   "Override the 'ignorecase' option if the search pattern contains upper case characters.
set hlsearch    "Highlight search results
set wrapscan    "Searches wrap around the end of the file.
set incsearch   "Set to interactive search : finds things as you type it

"-------------------------------------------
" General
"-------------------------------------------
set mouse=a                     " Enable the use of the mouse
set wildmenu                    " enable autocomplete by pressing <Ctrl-Space>
set history=700                 " Sets how many lines of history VIM has to remember
set noautoread                  " Unset auto read when a file is changed from the outside (autoread takes lot of performance)
set showmatch                   " When a bracket is inserted, briefly jump to the matching one
set nobackup                    " don't create backup files 
set noswapfile                  " don't create swap files
augroup syntax
hi difftext guibg=cyan          " Change the background color for diff text in gvimdiff

" Make sure blank lines don't display '~'
autocmd VimEnter * hi NonText guifg=bg

"-------------------------------------------
" Syntax 
"-------------------------------------------
filetype on                     " Switch on filetype highlighting.
syntax on                       " Switch on syntax highlighting.
set encoding=utf8               " Set utf8 as standard encoding and en_US as the standard language

" automatic file detection
augroup filetypedetect
    au! BufRead,BufNewFile *.p    setfiletype perl
    au! BufRead,BufNewFile *.hdl  setfiletype perl
    au! BufRead,BufNewFile *.udf  setfiletype perl
    au! BufRead,BufNewFile *.cc   setfiletype perl
    au! BufRead,BufNewFile *.vhd  setfiletype vhdl
    au! BufRead,BufNewFile *.asm  setfiletype ia64
    au! BufRead,BufNewFile *.as   setfiletype ia64
    au! BufRead,BufNewFile *.s    setfiletype ia64
    au! BufRead,BufNewFile *.icf  setfiletype verilog_systemverilog
    au! BufRead,BufNewFile *.hier setfiletype verilog_systemverilog
    au! BufRead,BufNewFile *.sv   setfiletype verilog_systemverilog
    au! BufRead,BufNewFile *.svh  setfiletype verilog_systemverilog
    au! BufRead,BufNewFile *.v    setfiletype verilog_systemverilog
    au! BufRead,BufNewFile *.vh   setfiletype verilog_systemverilog
    au! BufRead,BufNewFile *.vs   setfiletype verilog_systemverilog
    au! BufRead,BufNewFile *.rdl  setfiletype verilog_systemverilog
    au! BufRead,BufNewFile *.csh  setfiletype csh
augroup END

" Support editing of gzip-compressed files.
augroup gzip 
"    au! " Remove all gzip autocommands
    " read: set binary mode before reading the file
    " uncompress text in buffer after reading
    " write: compress file after writing
    " append: uncompress file, append, compress file
    autocmd BufReadPre,FileReadPre *.gz set bin
    autocmd BufReadPre,FileReadPre *.gz let ch_save = &ch|set ch=2
    autocmd BufReadPost,FileReadPost *.gz '[,']!gunzip
    autocmd BufReadPost,FileReadPost *.gz set nobin
    autocmd BufReadPost,FileReadPost *.gz let &ch = ch_save|unlet ch_save
    autocmd BufReadPost,FileReadPost *.gz execute ":doautocmd BufReadPost " . expand("%:r")

    autocmd BufWritePost,FileWritePost *.gz !mv <afile> <afile>:r
    autocmd BufWritePost,FileWritePost *.gz !gzip <afile>:r

    autocmd FileAppendPre *.gz !gunzip <afile>
    autocmd FileAppendPre *.gz !mv <afile>:r <afile>
    autocmd FileAppendPost *.gz !mv <afile> <afile>:r
    autocmd FileAppendPost *.gz !gzip <afile>:r
    autocmd BufNewFile,BufRead all_vi_files :map <2-LeftMouse> :exe "tag ". expand("<cword>")<CR><F4><F9>
    autocmd BufNewFile,BufRead all_vi_files :map <CR> :exe "tag ". expand("<cword>")<CR><F4><F9>
augroup END

" When starting a new line from a commente4d line, don't start the line with a comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"-------------------------------------------
" <Fx> Key Maps
"-------------------------------------------
" auto-complete with <Ctrl+Space>
map! <C-SPACE> <C-N>

nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>

" Go to previous buffer
nnoremap <A-k> :bprev<CR>
nnoremap <A-Up> :bprev<CR>

" Go to next buffer
nnoremap <A-j> :bnext<CR>
nnoremap <A-Down> :bnext<CR>

" Copy to system clipboard
nnoremap <leader>sy "+y
vnoremap <leader>sy "+y

" Paste from system clipboard
nnoremap <leader>sp "+p

" Copy current file path to system clipboard
nnoremap <leader>sf :let @*=expand('%:p')<CR>1<C-g>

" Move current line down
nnoremap <A-S-Down> :m .+1<CR>==

" Move current line up
nnoremap <A-S-Up> :m .-2<CR>==

" Move current selection down
vnoremap <A-S-Down> :m '>+1<CR>gv=gv

" Move current selection up
vnoremap <A-S-Up> :m '<-2<CR>gv=gv

" Pressing \\ shows the current directory
cmap \\ <C-R>=expand("%:p:h")."/"<cr>

"press \ To highlight a word so it will be highlight as in searches (hls) without jumping to next search
noremap <silent> \ :let @/='\<'.expand("<cword>").'\>'<bar>set hls<CR>

"press | to turn off the last search highlight
map \| :nohlsearch<CR>

" Fast window resizing with +/- keys (horizontal); / and * keys (vertical)
if bufwinnr(1)
    map <kPlus> <C-W>+
    map <kMinus> <C-W>-
endif
noremap + <C-W>+
noremap _ <C-W>-

" Map middle mouse button to paste in normal mode
nnoremap <MiddleMouse> "*P
" Map middle mouse button to paste in insert mode
inoremap <MiddleMouse> <C-R><C-O>*

"-------------------------------------------
" font Firacode Nerd Font
"-------------------------------------------
set guifont=FiraCode\ Nerd\ Font\ 14

"-------------------------------------------
" ColorScheme
"-------------------------------------------
colorscheme melange



