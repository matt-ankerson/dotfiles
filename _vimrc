" vimrc for Windows

set nocompatible     " be iMproved, required
filetype off         " required

" Runtime Path Manipulation
execute pathogen#infect()

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'klen/python-mode'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'rstacruz/sparkup'
Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
Plugin 'rhysd/vim-grammarous'
Plugin 'vim-airline/vim-airline'

call vundle#end()            " required

filetype plugin indent on    " required

"----------------------------------
" Non-Plugin stuff after this line

" Open markdown files with Chrome.
autocmd BufEnter *.md exe 'noremap <F5> :!start C:\Program Files (x86)\Google\Chrome\Application\chrome.exe %:p<CR>'

" Allow for backspacing over anything in insert mode.
set backspace=indent,eol,start

" Colour Options
set background=dark
syntax enable
colorscheme solarized

set encoding=utf-8
set termencoding=utf8

" Markdown Config
autocmd FileType markdown set spell spelllang=en_us

" Pymode Config
let g:pymode = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8']

autocmd FileType python set nowrap

" UI
set guifont=Hack:h12
set number        " line numbers on
set scrolloff=10  " always display 10 lines above and below the cursor
set laststatus=2  " airline - always show status line

" Whitespace
highlight TrailingWhiteSpace ctermbg=19 guibg=#4f5b66
nnoremap <Leader>dw :%s/\s\+$//e<CR>    " Delete all trailing whitespace in current buffer
match TrailingWhiteSpace /\s\+$/        " Match trailing whitespace

" Behave with windows copy/paste. Use ctrl+Q to enter visual block mode.
if has("win32")
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

" Navigating wrapped text
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

" Show all JSON formatting
let g:vim_json_syntax_conceal = 0

" Tab spacing and indentation
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Case features for searching files
set ignorecase
set smartcase

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
