" Needed for Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'solarnz/thrift.vim'
Plugin 'tpope/vim-rails'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'vim-ruby/vim-ruby'
Plugin 'rodjek/vim-puppet'
Plugin 'godlygeek/tabular'
call vundle#end()
filetype plugin on

syntax enable
set smartindent
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
" Hilight trailing whitespace
:highlight TrailWhitespace ctermbg=18
:match TrailWhitespace /\s\+$\| \+\ze\t/

" go stuff
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 0

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_enable_balloons = 1
let g:ycm_show_diagnostics_ui = 0
let g:syntastic_enable_signs = 1
let g:syntastic_enable_python_checkers = 1
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args='--ignore=F401'
let g:syntastic_puppet_checkers = ['puppetlint']
let g:syntastic_puppet_puppetlint_args='--no-80chars-check'
