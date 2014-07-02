" Vim config for hanmo.htf

set modelines=0

" tabs and shiftwidth
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" use utf-8 as default encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=cp936,ucs-bom,utf-8

" Other settings
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" set mapleader to ,
let mapleader = ","

" search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

nnoremap <C-j> <C-w><C-j>
vnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
vnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
vnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
vnoremap <C-h> <C-w><C-h>
nnoremap <C-_> <C-w><C-_>
vnoremap <C-_> <C-w><C-_>

" shortcup for escape and cmd
inoremap jj <ESC>
nnoremap ; :


" fold action for html
nnoremap <leader>f Vatzf

" set theme to solarized
syntax enable
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized

" shortcut for emmet(zencoding)
let g:user_emmet_expandabbr_key = '<leader>z'

" set backup
set noswapfile

" auto reload vimrc when modified
autocmd! bufwritepost ~/.vimrc source ~/.vimrc
autocmd! bufwritepost ~/.vim/hammer.vimrc source ~/.vimrc

nnoremap <leader>u :GundoToggle<CR>

" completions
au FileType php set omnifunc=phpcomplete#CompletePHP
