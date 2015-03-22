" Leader setting
let mapleader = ","

" Vundle settings. Run :BundleInstall to update
set nocompatible
filetype off    " Required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'   

Bundle 'altercation/vim-colors-solarized'
" Some settings to enable the theme:
set number        " Show line numbers
syntax enable     " Use syntax highlighting
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized

Bundle 'scrooloose/nerdtree'
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
nmap <leader>m :NERDTreeToggle<CR>

Bundle 'Lokaltog/vim-easymotion'
map <Leader> <Plug>(easymotion-prefix)

"Bundle 'lokaltog/vim-powerline'
"set encoding=utf-8 " Necessary to show Unicode glyphs
"let g:Powerline_symbols = 'fancy'
"set rtp+=/Users/nate/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
"set laststatus=2   " Always show the statusline
" For powerline font in MacVim
"set guifont=Menlo\ For\ Powerline

Bundle 'bling/vim-airline'
let g:airline_powerline_fonts=1
set t_Co=256
set laststatus=2
set fillchars+=stl:\ ,stlnc:\
let g:airline_theme             = 'powerlineish'
let g:airline#extensions#branch#enabled = 1                                                                                         
let g:airline#extensions#syntastic#enabled = 1

Bundle 'tpope/vim-fugitive'





filetype plugin indent on " Required

set cursorline              " Light highlight of the line with cursor
set expandtab               " Turn tab into space
set modelines=0             " Number of line (at the beginning and end of each file) vim checks for initializations
set shiftwidth=2            " How many columns text is indented with the reindent operations
set clipboard=unnamed       " Accessing the system clipboard from Vim
set synmaxcol=128
set ttyscroll=10            " Turn off scrolling
set encoding=utf-8
set tabstop=2               " Tab size 2
set nowrap                  " Don't wrap lines
set number
set nowritebackup           " No *.txt~ file to prevent jumping files
set noswapfile              " No swap file
set nobackup
"set hlsearch
"set ignorecase
"set smartcase
" Key Mappings
" Unmap the arrow keys
" no <down> ddp
" no <up> ddkP
" no <left> <Nop>
" no <right> <Nop>
" Auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } {zz
nmap { {zz
" Insert a new line below and above cursor in nomal mode
nmap go o<ESC>k
nmap gO O<ESC>j
" Command with leader character
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i
" Quick ESC
imap jj <ESC>
" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk
" format the entire file
nmap <leader>fef ggVG=
