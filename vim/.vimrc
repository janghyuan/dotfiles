set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""""""""""""""""""""""""""""""""
"""""""""""Plugin List"""""""""""
"""""""""""""""""""""""""""""""""
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
"""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""

call vundle#end()
filetype plugin indent on

syntax on
set number
set autoindent
set history=200
set cursorline
set backspace=eol,indent,start
set hidden
set t_Co=256
colors zenburn

set hlsearch
set incsearch
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:p:h').'/' : '%%'

map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
map <C-m> :ClearCtrlPCache<CR>

set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P
set laststatus=2

inoremap {<CR> {<CR>}<C-o>O
