" vimrc for Windows

set nocompatible     " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'klen/python-mode'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

call vundle#end()            " required

filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Non-Plugin stuff after this line

" Allow for backspacing over anything in insert mode.
set backspace=indent,eol,start

" Colour Options
set background=dark
syntax enable
colorscheme solarized

set encoding=utf-8
set termencoding=utf8

" Pymode Config
let g:pymode = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8']

autocmd FileType python set nowrap

set guifont=Hack:h12

" Runtime Path Manipulation
execute pathogen#infect() 

" Line numbering
set number

" Tab spacing and indentation
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
