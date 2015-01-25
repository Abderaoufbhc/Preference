# Linux

Content for .vimrc


set nocompatible
filetype off    " Required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'   

Bundle 'scrooloose/nerdtree'

Bundle 'altercation/vim-colors-solarized'
" Some settings to enable the theme:
set number        " Show line numbers
syntax enable     " Use syntax highlighting
set background=dark
let g:solarized_termcolors = 256 
colorscheme solarized

"============== Script configs ===============
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

filetype plugin indent on " Required


.zsh content

Theme: cloud


