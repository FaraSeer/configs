set shell=/bin/bash

set nocompatible
filetype off
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
 
 
 
Plugin 'klen/python-mode'	        " Python mode (docs, refactor, lints, highlighting, run and ipdb and more) 
Plugin 'davidhalter/jedi-vim'
Plugin 'elzr/vim-json'
"Plugin 'ludovicchabant/vim-gutentags'
 
 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

filetype on
syntax on
set nobackup
set nowritebackup
set noswapfile
set smarttab
set tabstop=4

"=====================================================
" Python-mode settings
"=====================================================
"" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
" поддержка virtualenv
let g:pymode_virtualenv = 1
" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all


" Disable choose first function/method at autocomplete
let g:jedi#popup_select_first = 0

" Return backspace work as expected
set backspace=indent,eol,start
