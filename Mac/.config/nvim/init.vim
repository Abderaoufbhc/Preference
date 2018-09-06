" Author: Lucas Fang
" Bootstrap: https://vim-bootstrap.com/
"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************

call plug#begin('~/.nvim/plugged')

" Color Theme
Plug 'vim-airline/vim-airline'                      " lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline-themes'               " airline theme
Plug 'altercation/vim-colors-solarized'             " Color theme

" Editor
Plug 'scrooloose/nerdtree'                          " A tree explorer plugin
Plug 'Xuyuanp/nerdtree-git-plugin'                  " NERDTree showing git status
Plug 'jeffkreeftmeijer/vim-numbertoggle'            " Toggles between hybrid and absolute line numbers automatically
Plug 'scrooloose/nerdcommenter'                     " Intensely orgasmic commenting
Plug 'simnalamburt/vim-mundo'                       " Vim undo tree visualizer, a fork of gundo
Plug 'tpope/vim-surround'                           " quoting/parenthesizing made simple
Plug 'jiangmiao/auto-pairs'                         " insert or delete brackets, parens, quotes in pair
Plug 'godlygeek/tabular'                            " text filtering and alignment

" Navigation
Plug 'Lokaltog/vim-easymotion'                      " Vim motions on speed
Plug 'haya14busa/incsearch.vim'                     " Improved incremental searching for Vim
Plug 'haya14busa/incsearch-fuzzy.vim'               " incsearch fuzzy support
Plug 'haya14busa/incsearch-easymotion.vim'          " incsearch-easymotion integration
Plug 'Lokaltog/vim-easymotion'                      " Vim motions on speed
Plug 'junegunn/fzf.vim'                             " fzf & vim
Plug '/usr/local/opt/fzf'                           " for Mac if installed using Homebrew
Plug '~/.fzf'                                       " for Linux if installed using git

" Language Support
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }  " displays tags in a window, ordered by scope

" Not Used
" Plug 'tpope/vim-fugitive'
" Plug 'scrooloose/syntastic'                       " Syntax checking hacks for vim. Report too many errors if using other build tool like bazel
" Plug 'tpope/vim-repeat'                           " enable repeating supported plugin maps with .
" Plug 'ctrlpvim/ctrlp.vim'                         " Fuzzy file, buffer, mru, tag, etc finder

call plug#end()

" nvim did the following automatically
" filetype plugin indent on
" syntax enable
" set encoding=UTF-8

"*****************************************************************************
"" Common
"*****************************************************************************

" Leader setting
let mapleader = ","

"*****************************************************************************
"" Color Theme
"*****************************************************************************

" Solarized theme setting
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized

" Air-line
let g:airline_powerline_fonts=1
set t_Co=256
set laststatus=2
set fillchars+=stl:\ ,stlnc:\
let g:airline_theme             = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1

"*****************************************************************************
"" Editor
"*****************************************************************************

" char
set encoding=utf-8
set list                               " settings for hidden chars
set listchars=eol:¬,tab:>-,trail:~     ",extends:>,precedes:<,space:␣
" space / tab / indent
set expandtab                           " Turn tab into space
set shiftwidth=2                        " How many columns text is indented with the reindent operations
set tabstop=2                           " Tab size 2
set autoindent                          " Automatically indent
set cindent                             " C syntax formatting
set smartindent                         " In a smarty way
nmap <leader>fe ggVG=                   " Indent entire file
" line
set number                              " Show line numbers
set relativenumber
set cursorline                          " Light highlight of the line with cursor
set modelines=0                         " Number of line (at the beginning and end of each file) vim checks for initializations
set nowrap                              " Don't wrap lines
set scrolloff=3                         " show context above/below cursorline
" column
set synmaxcol=128
" clipboard
set clipboard=unnamed                   " Accessing the system clipboard from Vim
" undo
set undofile
set undodir=~/.nvim/undo
set undolevels=1000                     " How many undos
set undoreload=10000                    " number of lines to save for undo
" file
set nowritebackup                       " No *.txt~ file to prevent jumping files
set noswapfile                          " No swap file
set nobackup
set autoread                            " Automatically read changed files
set wildmode=longest,list,full
" Vim
imap jk <ESC>                           " Quit ESC
set mouse=a                             " Enable mouse
nmap <leader>v :source ~/.config/nvim/init.vim<CR>:filetype detect<CR>:exe ":echo 'init.vim reloaded'"<CR>

" Not Used
" Unmap the arrow keys
" no <down> ddp
" no <up> ddkP
" no <left> <Nop>
" no <right> <Nop>

" NERDThree
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
" Open NERDTree
nmap <leader>m :NERDTreeToggle<CR>        " Toggle NERDTree
nmap <leader>n :NERDTreeFind<CR>          " Toggle and find file NERDTree
" Open a NERDTree if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Open NERDTree automatically when vim start up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Auto refresh the directory panes
"autocmd CursorHold,CursorHoldI * call NERDTreeFocus() | call g:NERDTree.ForCurrentTab().getRoot().refresh() | call g:NERDTree.ForCurrentTab().render() | wincmd w
" NERDTress File highlighting: https://github.com/scrooloose/nerdtree/issues/433#issuecomment-92590696
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" nerdcommenter
filetype plugin on
let g:NERDSpaceDelims = 1                                             " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1                                         " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left'                                       " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDAltDelims_java = 1                                          " Set a language to use its alternate delimiters by default
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } } " Add your own custom formats or override the defaults
let g:NERDCommentEmptyLines = 1                                       " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1                                  " Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1                                     " Enable NERDCommenterToggle to check all selected lines is commented or not

" Gundo
nnoremap <leader>u :MundoToggle<CR>

" vim-surround: https://stackoverflow.com/questions/2147875/what-vim-commands-can-be-used-to-quote-unquote-words#answer-2148221
:nnoremap <Leader>q" ciw""<Esc>P
:nnoremap <Leader>q' ciw''<Esc>P
:nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P

" tabular
vnoremap <expr> <Leader>. ":Tabularize /^\\s*\\S.*\zs" . split(&commentstring, '%s')[0] . "<CR>"
nnoremap <expr> <Leader>. ":Tabularize /^\\s*\\S.*\zs" . split(&commentstring, '%s')[0] . "<CR>"

"*****************************************************************************
"" Navigation
"*****************************************************************************

" Search
nnoremap <silent> <C-l> :nohl<CR><C-l>                " <Ctrl-l> redraws the screen and removes any search highlighting.

" Easymotion + incsearch + fuzzy
function! s:incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<CR>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))
function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> <leader>/ incsearch#go(<SID>config_easyfuzzymotion())

" fzf
nmap <C-f> :Files<CR>
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

"*****************************************************************************
"" Language Support
"*****************************************************************************

" tagbar
nmap <leader>t :TagbarToggle<CR>

"*****************************************************************************
"" Not Used
"*****************************************************************************

" Sytastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_java_checkers = ['javac']
