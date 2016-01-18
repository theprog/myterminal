set nocompatible
syntax on
filetype plugin indent on
set encoding=utf-8

set number          " show line numbers
set lines=60        " make the editor 60 lines tall
set columns=150     " make the editor 150 columns wide

set tabstop=4       " hitting tab produces 4 columns space
set shiftwidth=4    " indent operations produce 4 columns space
set expandtab     " don't replace a <tab> with <space>'es
set softtabstop=4  " amount of columns to use when hitting <tab> in insert mode

set history=1000    " keep track of history for 1000 actions

set ruler          " show cursorposition
set cursorline     " highlight current line
set showcmd        " display incomplete commands
"set incsearch      " incremental searching
"set hlsearch       " highlight searchresult

set scrolloff=4    " keep at least 4 lines above or below the cursor

syntax enable
"let g:solarized_termcolors=256
let &t_Co=256
set term=screen-256color
set background=dark

call plug#begin()


Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

colorscheme solarized
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_theme="solarized"
let g:airline_powerline_fonts=1

map <C-n> :NERDTreeToggle<CR>

   
set laststatus=2

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:tmuxline_theme = 'vim_statusline_3'
