set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  map <C-n> :NERDTreeToggle<CR>
  map <C-l> :tabn<cr>
  map <C-h> :tabp<cr>
  let NERDTreeShowHidden=1
  let NERDTreeMouseMode=2
  let NERDTreeIgnore = ['.idea$', '.git$']
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-rails'
Plugin 'kshenoy/vim-signature'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'sjl/gundo.vim'
  nnoremap <F5> :GundoToggle<CR>
Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'
  hi IndentGuidesOdd  ctermbg=black
  hi IndentGuidesEven ctermbg=darkgrey
  let g:indent_guides_start_level = 2
  let g:indent_guides_enable_on_vim_startup = 1
Plugin 'mattn/emmet-vim'
  let g:user_emmet_settings = { 'indentation' : ' ' }
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/syntastic'
Plugin 'mileszs/ack.vim'
Plugin 'cohama/lexima.vim'

call vundle#end()

" There are shortcuts for lines movings
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
inoremap <S-j> <Esc>:m .+1<CR>==gi
inoremap <S-k> <Esc>:m .-2<CR>==gi
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

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
set clipboard=unnamed

set fileencoding=utf-8
set encoding=utf-8 nobomb

set ignorecase
set incsearch
set hlsearch
set list
set listchars=tab:→\ ,trail:·

set tabstop=2
set softtabstop=2
set smartindent
set shiftwidth=2
set expandtab

set wrap
set linebreak

set mouse=a
set nobackup
set noswapfile

set directory=~/.vim/.tmp,~/tmp,/tmp
set wildmenu
"set paste   // When this option is on lexima.vim doesn't work. Lexema.vim very good tool.
