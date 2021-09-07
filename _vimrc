filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
" let Vundle manage Vundle, required
" ~~~~~~~~~~~~~~~~~~~~~~ MY PLUGINS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'chrisbra/csv.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'joshdick/onedark.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin' 
Plugin 'lepture/vim-jinja'
"need to set cmd line as default terminal when cleaning!!!!!!!!!!!!!

"Plugin 'neoclide/coc.nvim'

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
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~VIM SETTINGS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
colorscheme onedark
syntax on


"shortcuts
let mapleader = "\\"
map <C-n> :NERDTreeToggle<CR>
map <C-`> :set shell=C:\\WINDOWS\\sysnative\\WindowsPowerShell\\v1.0\\powershell.exe <CR>:terminal<CR>
"nnoremap <F9> :w <CR> :!clear <CR> :make <CR> :!./output<CR>
nnoremap <F9> :!clear <CR> :!python % <CR>
"nnoremap <F9> :w <CR> :!clear <CR> :!julia % <CR>
imap jj <Esc>

" enable 256 colors
"set t_Co=256
"set t_ut=

" restore place in file from previous session
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" turn on line numbering
set number

" smart case for find
set ignorecase
set smartcase

"misc properties
set timeout
set timeoutlen=190
set number
set smartindent
set splitright
set splitbelow
let g:ycm_autoclose_preview_window_after_completion=1
hi Search ctermbg=red
hi Search ctermfg=black
set backspace=indent,eol,start " backspace over everything in insert mode
set belloff=all
set hlsearch

