"" vimrc file
"
" vim: set foldmethod=marker:
"
" Create on: 6th October 2013
" Last edit: 4th February 2018
" by: François LASSERRE
"
" This file is available on my github repo:
" http://www.github.com/ChoiZ/Micro-Vim-config
"

set nocompatible                " Set nocompatible mode for vi

set autoindent
set autoread
set background=dark
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

set textwidth=80                " Line width 80 characters
set wrap                        " Wrap to new lines the lines exeed 80 chars
set formatoptions=tcqn12        " More informations :help fo-table
if v:version >= 740
    set formatoptions=tcqjn12   " More informations :help fo-table
endif
set smartindent
set shiftwidth=4                " Use 4 spaces for indent
set tabstop=4                   " An indentation every 4 columns
set expandtab                   " Tabs are spaces
" Remove whitespace
noremap <silent> <F3> :call StripTrailingWhitespace()<CR>
" Open all Folds
noremap <F7> zR
" Set paste mode
set pastetoggle=<F10>
" ToogleNumber
nnoremap <silent> <F12> :call ToogleNumber()<CR>

set modeline                    " Enable modeline
set modelines=5                 " Enable only 5 modelines

set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current

" FUNCTIONS {{{
function! StripTrailingWhitespace()
    " preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    " clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" Usefull with 10k or 10j
function! ToogleNumber()
    if (&relativenumber == 1)
        set number
        set norelativenumber
    else
        set nonumber
        set relativenumber
    endif
endfunc
