" Basic settings
set nocompatible              " Eliminate backwards-compatability
set number                    " Enable line numbers
set ruler                     " Turn on the ruler
syntax on                     " Syntax highlighting
filetype off                  " Req'd for vundle
set rtp+=~/.vim/bundle/vundle " Vundle prelude
call vundle#rc()              " ^
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/unite.vim'
filetype plugin indent on     " Req'd for vundle
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
filetype plugin indent on     " Req'd for vundle
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let mapleader = ","
set history=1000
set wildmenu
set wildmode=list:longest
set hidden
nnoremap ' `
nnoremap ` '
set ignorecase 
set smartcase
set title
set shortmess=atI
set visualbell
nmap <leader>T :enew<cr>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard
cmap w!! w !sudo tee % > /dev/null 
set background=dark
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Intuitive backspacing in insert mode
set backspace=indent,eol,start
 
" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
filetype indent on
 
" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.

:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:imap <c-s> <Esc><c-s>
colorscheme solarized
