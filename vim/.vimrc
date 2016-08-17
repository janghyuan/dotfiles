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
Plugin 'tpope/vim-unimpaired'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
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
" Ex mode auto completion
set wildmenu
set wildmode=full
" 在 Ex mode 时映射<C-n> <C-p>为<Down> <Up>
" 缘由是 <C-n> <C-p> 不会像 <Down> <Up> 那样对命令历史进行过滤
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:p:h').'/' : '%%'

map <C-n> :NERDTreeToggle<CR>
" 进入 vim 时自动启用 NERDTree
" autocmd vimenter * NERDTree
map <C-m><C-m> :ClearCtrlPCache<CR>

"set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P

let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
set laststatus=2

inoremap {<CR> {<CR>}<C-o>O

if exists('$TMUX')
	set term=screen-256color
endif

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

