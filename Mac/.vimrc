set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All other plugins
Plugin 'altercation/vim-colors-solarized'   " Color theme

Plugin 'tpope/vim-fugitive'                 " plugin on Git wrapper
Plugin 'scrooloose/nerdtree'                " A tree explorer plugin
Plugin 'Lokaltog/vim-easymotion'            " Vim motions on speed
Plugin 'bling/vim-airline'                  " lean & mean status/tabline for vim that's light as air

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Leader setting
let mapleader = ","

" Solarized theme setting
syntax enable
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized

" NerdThree
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
nmap <leader>m :NERDTreeToggle<CR>  " Toggle NERDTree
"Open a NERDTree if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Easy Motion
map <Leader> <Plug>(easymotion-prefix)

"Plugin 'lokaltog/vim-powerline'
"set encoding=utf-8 " Necessary to show Unicode glyphs
"let g:Powerline_symbols = 'fancy'
"set rtp+=/Users/nate/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
"set laststatus=2   " Always show the statusline
" For powerline font in MacVim
"set guifont=Menlo\ For\ Powerline

" Air-line
let g:airline_powerline_fonts=1
set t_Co=256
set laststatus=2
set fillchars+=stl:\ ,stlnc:\
let g:airline_theme             = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1


" Editor display settings
filetype plugin indent on   " Required
set number                  " Show line numbers
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
