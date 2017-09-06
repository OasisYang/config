"""""""""""install plugins"""""""""""
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')

" https://github.com/VundleVim/Vundle.vim#about 
Plugin 'VundleVim/Vundle.vim'
" https://github.com/christoomey/vim-tmux-navigator
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

filetype on
filetype plugin indent on

"""""""""""basic typing formatting"""""""""""
set number
set expandtab  " On pressing tab, insert 2 spaces
set tabstop=2  " show existing tab with 2 spaces width
set shiftwidth=2  " when indenting with '>', use 2 spaces width

" python tab settings
function! SetupPython()
  setlocal softtabstop=2
  setlocal tabstop=2
  setlocal shiftwidth=2
endfunction
command! -bar SetupPython call SetupPython()"

colorscheme desert

" vertical column-80 line
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
set colorcolumn=81

"""""""""""shortcuts"""""""""""
set pastetoggle=<F3>
