set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  map <C-n> :NERDTreeToggle<CR>
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-rails'
Plugin 'morhetz/gruvbox'

call vundle#end()

filetype plugin indent on    

set number
syntax enable
set t_Co=256
set background=dark
colorscheme gruvbox

set history=1000
set undolevels=1000
set colorcolumn=120
set nostartofline
set scrolloff=8

set fileencoding=utf-8
set encoding=utf-8 nobomb

set ignorecase
set incsearch
set hlsearch

