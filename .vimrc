" basic configuration
set number
set relativenumber
set numberwidth=5
set wrap
set noshiftround
set matchtime=4
set nohlsearch
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set mouse=a
set foldmethod=syntax
set nocompatible
syntax enable
filetype on
filetype plugin on
filetype plugin indent on
"-------------"
" KEYBINDINGS "
"-------------"
" leader keys
nnoremap <space> <nop>
vnoremap <space> <nop>
let mapleader = " "
let maplocallerader = ","
"-------------"
" INSERT MODE "
"-------------"
" make a world uppercase 
inoremap <c-U> <esc>hviwUea
" jj to exit
inoremap <esc> <nop>
inoremap jk <esc>
" new line in insertmode
inoremap <c-o> <esc>o
" delete line in insert mode
inoremap <c-d> <esc>ddi
" completely disable arrow keys for movement
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <down> <nop>
inoremap <up> <nop>
" center current line in terminal
inoremap <c-z> <C-\><C-O><C-E><CR>  
"-------------"
" NORMAL MODE "
"-------------"
" quit vim
nnoremap <leader>q :wq<cr>
" write changes
nnoremap <leader>w :w<cr>
" make a world uppercase 
nnoremap <leader>U viwU
" make a world lowercase
nnoremap <leader>u viwu
" vsplit to edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" source vim config file without closing it
nnoremap <leader>sv :source $MYVIMRC<cr>
" new line 
nnoremap oo o<esc>k
nnoremap OO O<esc>j
" new line with one emptyline before/after
nnoremap oi o<esc>o
nnoremap Oi O<esc>O
" window management
nnoremap <leader>wv <c-w><c-v>
nnoremap <leader>ws <c-w><c-s>
nnoremap <leader>wl <c-w><c-l>
nnoremap <leader>wk <c-w><c-k>
nnoremap <leader>wj <c-w><c-j>
nnoremap <leader>wh <c-w><c-h>
nnoremap <leader>wo <c-w><c-o>
" end and beginning of line movements
nnoremap L $
nnoremap H 0
" completely disable arrow keys for movement
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <down> <nop>
nnoremap <up> <nop>
"-------------"
" VISUAL MODE "
"-------------"
" jj to exit
vnoremap <esc> <nop>
vnoremap jk <esc>
"------------------"
" USEFUL FUCNTIONS "
"------------------"
" persistent undo
let vimDir = '$HOME/.vim'
if stridx(&runtimepath, expand(vimDir)) == -1
        " vimDir is not on runtimepath, add it
        let &runtimepath.=','.vimDir
endif
" Keep undo history across session by storing it in a file
if has('persistent_undo')
        let myUndoDir = expand(vimDir . '/undodir')
        " Create dirs
        call system('mkdir ' . vimDir)
        call system('mkdir ' . myUndoDir)
        let &undodir = myUndoDir
        set undofile
endif
" always centerd cursor in normal mode
augroup KeepCentered
        autocmd!
        autocmd CursorMoved * normal! zz
augroup end

"---------"
" PLUGINS "
"---------"
call plug#begin()

Plug 'vim-python/python-syntax'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'

call plug#end()

" enable python syntax-mode
let g:python_highlight_all = 1
" enable globally rainbow parentheses mode
let g:rainbow_active = 1
" setup lightline
set laststatus=2
if !has('gui_running')
	set t_Co=256
endif
let g:lightline = { 'colorscheme': 'PaperColor' }
set background=dark
