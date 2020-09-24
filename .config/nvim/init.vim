"---------------------
"----- PLUGINS -------
"---------------------

call plug#begin('~/.local/share/nvim/plugged')

set number          " Show line number for each line
set autoindent      " Copy indent from current line when
                    " Starting a new line

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set ruler           " Show at which column and row
                    " The cursor is in characters

set colorcolumn=80  " Show a red line to maintain standard
                    " Line length


let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

"---------------------
"----- TOOLS  --------
"---------------------

" Tree Navigation
Plug 'preservim/nerdtree'

" File Search
Plug 'junegunn/fzf'


" -------------------
" ----- STYLES  -----
" -------------------

" Theming
Plug 'rakr/vim-one'
Plug 'itchyny/lightline.vim'

" Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Show Git Diff
Plug 'airblade/vim-gitgutter'

" todo: find out what this does
Plug 'easymotion/vim-easymotion'

"------------------
"---- LANGUAGE ----
"------------------

" Intellisense, LSP, autosuggestions
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Language pack
Plug 'sheerun/vim-polyglot'

" Create :Prettier command
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" End of Nvim plugins
call plug#end()


"------------------
"--- VIM CONFIG ---
"------------------

let g:one_allow_italics = 1     " I love italic for comments

syntax on                       " Turn on syntax highlight

colorscheme one                 " one is the name of color scheme
set background=dark             " for the dark version
set termguicolors               " Use true colors in terminal

