filetype plugin indent on
syntax enable

colorscheme 256-jungle
set expandtab
set autoindent
set rnu
set cursorline

set sw=2 ts=2

" Filetype-specific indentation
au FileType coffee  setlocal sw=2 ts=2 
au FileType js  setlocal sw=2 ts=2 
au FileType css setl sw=2 sts=2
au FileType scss setl sw=2 sts=2

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

map <C-C> :color 256-jungle<CR>

" Search
map <C-T> :CommandT<CR>
let g:ackprg = 'ag --nogroup --nocolor --column'
map <C-A> :Ack 

" Javascript evaluation tools
map <C-H> :!/usr/local/bin/node % <CR>
map <C-K> :w !node -p  <CR>

map <C-P> %

call plug#begin('~/.vim/plugged')
Plug 'mileszs/ack.vim'
Plug 'wincent/command-t'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdcommenter'
" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

" Commenting configuration
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

