" Basic settings
set nocompatible              " Eliminate backwards-compatability
set number                    " Enable line numbers
set ruler                     " Turn on the ruler
syntax on                     " Syntax highlighting
filetype off                  " Req'd for vundle
filetype plugin indent on     " Req'd for vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()              " ^
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Plugin 'bling/vim-bufferline'

set laststatus=2
let mapleader = ","
set history=1000
set wildmenu
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
set background=dark
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Intuitive backspacing in insert mode
set backspace=indent,eol,start
 
" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.
set undofile
" set a directory to store the undo history
set undodir=~/.vimundo/
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:imap <c-s> <Esc><c-s>
cmap w!! w !sudo tee % > /dev/null 

autocmd FileType c,cpp,java,scala,php,js,javascript let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
autocmd FileType dosini              let b:comment_leader = ';'
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>