" vimrc for os x / linux

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'klen/python-mode'
Plugin 'Lokaltog/powerline'
Plugin 'altercation/vim-colors-solarized'
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'othree/html5.vim'
call vundle#end()

filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" Tab spacing and indentation
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Colour options
set background=dark
syntax enable
colorscheme solarized

set guifont=Hack:h12

if has("win32")
	set gfn=Hack:h12
elseif has("unix")
	set gfn=Hack:h12
endif

" Use fancy symbols for powerline
let g:Powerline_symbols = 'fancy'

set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" Pymode Config
let g:pymode = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8']

autocmd FileType python set nowrap

set vb t_vb=                    " disable fucking bell
