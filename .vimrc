" Needed for Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'solarnz/thrift.vim'
Plugin 'tpope/vim-rails'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
call vundle#end()
filetype plugin indent on

syntax enable
set mouse=a
set expandtab
set tabstop=2
set shiftwidth=2
set number
set backspace=2
set whichwrap+=<,>,h,l,[,]
colorscheme torte
set colorcolumn=81
highlight ColorColumn ctermbg=233

" go stuff
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 0

