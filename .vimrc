" Needed for Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'solarnz/thrift.vim'
Plugin 'tpope/vim-rails'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'rodjek/vim-puppet'
Plugin 'godlygeek/tabular'
Plugin 'aklt/plantuml-syntax'
Plugin 'derekwyatt/vim-scala'
call vundle#end()
filetype plugin on

syntax enable
set smartindent
set mouse=a
if has('mouse_sgr')
  set ttymouse=sgr
endif

set expandtab
set tabstop=2
set shiftwidth=2
set number
set backspace=2
set whichwrap+=<,>,h,l,[,]
colorscheme industry
set colorcolumn=101
highlight ColorColumn ctermbg=233
" Hilight trailing whitespace
:highlight TrailWhitespace ctermbg=18
:match TrailWhitespace /\s\+$\| \+\ze\t/

" Vagrant syntax
au BufRead,BufNewFile Vagrantfile set filetype=ruby

" Aurora syntax
au BufRead,BufNewFile *.aurora set filetype=python
au BufRead,BufNewFile BUILD set filetype=python

" Vertica SQL syntax
au BufRead,BufNewFile *.vsql set filetype=sql

" go stuff
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 0

set laststatus=2
set statusline+=%F
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntax errors are hard to read in the default color
hi SpellBad term=reverse ctermbg=88 gui=undercurl guisp=DarkRed

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_enable_balloons = 1
let g:ycm_show_diagnostics_ui = 0
let g:syntastic_enable_signs = 1
let g:syntastic_enable_python_checkers = 1
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_python_flake8_args='--ignore=F401'
let g:syntastic_puppet_checkers = ['puppetlint']
let g:syntastic_puppet_puppetlint_args='--no-80chars-check'
