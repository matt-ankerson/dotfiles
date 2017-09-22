" vimrc for os x / linux

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'klen/python-mode'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'othree/html5.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'posva/vim-vue'
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

" Check if has python
" if !has("python")
"    echo 'python NOT loaded'
"    finish
"endif
" Pathogen

set modelines=0		" CVE-2007-2438

set number          " line numbers on
set scrolloff=10    " always display 10 lines above and below the cursor
set laststatus=2    " airline - always show the status line

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

" Whitespace
highlight TrailingWhiteSpace ctermbg=19 guibg=#4f5b66
nnoremap <Leader>dw :%s/\s\+$//e<CR>    " Delete all trailing whitespace in current buffer
match TrailingWhiteSpace /\s\+$/        " Match trailing whitespace

" Navigating wrapped text
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

set number       " Turn on line numbering
"set scrolloff=10 " Maintain 10 lines above and below the cursor.

" Colour options
"set background=dark
syntax enable

set guifont=Hack:h12

" Fonts / encoding
if has("win32")
	set gfn=Hack:h12
elseif has("unix")
	set gfn=Hack:h12
endif

set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

" Support for .vue files
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" Pymode Config
let g:pymode = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8']

autocmd FileType python set nowrap

set vb t_vb=                    " disable fucking bell
