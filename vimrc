"" vimrc file
"
" vim: set foldmethod=marker:
"
" Create on: 6th October 2013
" Last edit: 26th July 2014
" version: 4
" by: François LASSERRE
"
" This file is available on my github repo:
" http://www.github.com/ChoiZ/Micro-Vim-config
"

set nocompatible                " Set nocompatible mode for vi

set autoindent
set autoread
set background=dark
set backspace=1
set nobomb
set encoding=utf-8
set fileencoding=utf-8

set listchars=tab:\ \ ,trail:¤,extends:>,precedes:<,nbsp:¬
set list

set binary
set noeol                       " Don't add empty newlines at the end of files

filetype plugin indent on
syntax on
colorscheme grb256

set t_Co=256
set title
set titlestring=%f title        " Display filename in terminal window

set nu                          " Show line number
set hlsearch
match Error /\s\+$/             " Highlight trailing whitespaces

set textwidth=80
set wrap
set formatoptions=tcqn12       " More informations :help fo-table
if v:version >= 740
    set formatoptions=tcqjn12       " More informations :help fo-table
endif
set smartindent
set shiftwidth=4                " Use 4 spaces for indent
set tabstop=4                   " An indentation every 4 columns
set expandtab                   " Tabs are spaces
set pastetoggle=<F10>

set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current
