"" vimrc file
"
" vim: set foldmethod=marker:
"
" Create on: 6th October 2013
" Last edit: 25th October 2013
" version: 3
" by: François LASSERRE
"
" This file is available on my github repo:
" http://www.github.com/ChoiZ/Micro-Vim-config
"

" Set nocompatible mode for vi
set nocompatible
syntax on
set backspace=indent,eol,start

" Define file format to utf-8
set encoding=utf-8 nobomb       " No Byte Order Mark!
set fileencoding=utf-8
set binary

set nu                          " Show line number
set hlsearch

set smartindent
set shiftwidth=4                " Use 4 spaces for indent
set tabstop=4                   " An indentation every 4 columns
set expandtab                   " Tabs are spaces
set pastetoggle=<F10>

set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current
