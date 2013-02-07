
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
filetype plugin on

set nocompatible

set modelines=0

syntax enable

"let the Align thing work..
set nocp

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set showtabline=2
set number
set wrap
set encoding=utf-8
set autoindent

"quicker regex matching
set incsearch
"set hlsearch

"make regexes a little more predictable
nnoremap / /\v
vnoremap / /\v

"ignore case when all lower case
set ignorecase
set smartcase
set pastetoggle=<F2>

"deal with one line wrapping to multiple lines
nnoremap j gj
nnoremap k gk

"change the <leader> to ,
let mapleader = ","

"strip all trailing whitespace with ,W
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

"reselect pasted text with ,v
nnoremap <leader>v V`]

"get out of insert mode with jj
inoremap jj <ESC>

set nofoldenable " disable folding

set t_Co=256

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)

au BufNewFile,BufRead *.ejs set filetype=html


set background=dark

colorscheme solarized


if has("gui_macvim")
	set fuopt+=maxhorz
	set guioptions-=T
	set guifont=Monaco:h12
endif

cabbr te tabedit
cabbr to tabonly
au BufNew,BufRead Gemfile set syntax=ruby
au BufNew,BufRead irb_tempfile.rb.* set syntax=ruby

au BufWinEnter .rb let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)
au BufWinEnter     let w:m2=matchadd('ErrorMsg', '\s\+$', -1)

set wildignore+=*.beam
