" Basic Settings
set number              " Show absolute line numbers
set relativenumber      " Show relative line numbers
set cursorline          " Highlight current line
syntax on               " Enable syntax highlighting

set autoindent          " Auto-indent new lines
set smartindent         " Smart auto-indent
set showmatch           " Highlight matching brackets
set wrap                " Enable line wrapping
set hlsearch            " Highlight search results
set incsearch           " Incremental search as you type
set mouse=a             " Enable mouse in all modes

set tabstop=4           " Number of spaces a tab counts for
set shiftwidth=4        " Number of spaces for indentation
set expandtab           " Use spaces instead of tabs
set undofile            " Persistent undo
set lazyredraw          " Faster scrolling/redrawing
set scrolloff=3         " Keep 3 lines visible when scrolling

colorscheme desert      " Colorscheme

 
" Window split behavior
set splitright          " Vertical splits open to the right
set splitbelow          " Horizontal splits open below


" Plugin manager: vim-plug
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'

call plug#end()


" === Keybindings ===

" --- Override: Toggle NERDTree with capital N (Shift+N) ---
nnoremap N :NERDTreeToggle<CR>

" --- Shortcut: Toggle NERDTree with Ctrl + n ---
nnoremap <C-n> :NERDTreeToggle<CR>

" --- Window navigation shortcuts ---
nnoremap <C-h> <C-w>h    " Ctrl+h to move to left window
nnoremap <C-j> <C-w>j    " Ctrl+j to move down
nnoremap <C-k> <C-w>k    " Ctrl+k to move up
nnoremap <C-l> <C-w>l    " Ctrl+l to move right

" Disable backup files (filename~)
set nobackup
set nowritebackup

" Disable swap files (.filename.swp)
set noswapfile

" Disable persistent undo files (filename.un~)
set noundofile
inoremap <C-Space> <Esc>
inoremap <NUL> <Esc>