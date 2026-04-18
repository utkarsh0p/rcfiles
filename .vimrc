" ╔══════════════════════════════════════════╗
" ║           BASIC SETTINGS                 ║
" ╚══════════════════════════════════════════╝

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
set lazyredraw          " Faster scrolling/redrawing
set scrolloff=3         " Keep 3 lines visible when scrolling
set encoding=UTF-8      " Required for devicons
set ttimeoutlen=10      " Faster cursor shape switching

" ╔══════════════════════════════════════════╗
" ║           CURSOR SETTINGS               ║
" ╚══════════════════════════════════════════╝

" Blinking beam in insert mode, solid block in normal
let &t_SI = "\e[5 q"   " blinking beam  → insert mode
let &t_EI = "\e[2 q"   " solid block    → normal mode
let &t_SR = "\e[4 q"   " solid underline → replace mode

" Reset cursor when vim exits
autocmd VimLeave * silent !echo -ne "\e[2 q"

" ╔══════════════════════════════════════════╗
" ║           WINDOW BEHAVIOR               ║
" ╚══════════════════════════════════════════╝

set splitright          " Vertical splits open to the right
set splitbelow          " Horizontal splits open below

" ╔══════════════════════════════════════════╗
" ║           DISABLE JUNK FILES            ║
" ╚══════════════════════════════════════════╝

set nobackup
set nowritebackup
set noswapfile
set noundofile

" ╔══════════════════════════════════════════╗
" ║           PLUGINS                        ║
" ╚══════════════════════════════════════════╝

call plug#begin('~/.vim/plugged')

" --- File Explorer ---
" Open/close with N or Ctrl+n
Plug 'preservim/nerdtree'

" --- File Icons in NERDTree ---
" Requires Nerd Font installed in terminal
Plug 'ryanoasis/vim-devicons'

" --- Floating Terminal ---
" Toggle with Ctrl+j
Plug 'voldikss/vim-floaterm'

" --- Fuzzy File Finder ---
" Ctrl+p = find file by name
" Ctrl+f = find text inside all files (requires ripgrep)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" --- Statusline ---
" Shows mode, file, encoding, line number at bottom
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" --- Syntax Highlighting for 100+ languages ---
Plug 'sheerun/vim-polyglot'

" --- Colorschemes ---
Plug 'morhetz/gruvbox'                      " warm brown — easy on eyes
Plug 'dracula/vim'                          " dark purple — vibrant
Plug 'joshdick/onedark.vim'                 " atom dark — clean blue
Plug 'arcticicestudio/nord-vim'             " cool blue — very soothing
Plug 'sainnhe/sonokai'                      " vibrant modern — most colorful
Plug 'catppuccin/vim', {'as': 'catppuccin'} " pastel — soothing and vibrant
Plug 'sainnhe/everforest'                   " green nature — easy on eyes
Plug 'sainnhe/edge'                         " clean purple/blue — soothing
Plug 'projekt0n/github-nvim-theme'          " github dark — clean and vibrant
Plug 'EdenEast/nightfox.nvim'              " nightfox — deep blue vibrant
Plug 'rose-pine/vim'                        " rose pine — warm pink/purple soothing

" --- Smooth Scrolling ---
" Makes Ctrl+d and Ctrl+u scroll smoothly
Plug 'psliwka/vim-smoothie'

" --- Startup Screen ---
" Shows recent files when opening Vim without a file
Plug 'mhinz/vim-startify'

" --- Autocomplete Engine ---
" VS Code like intellisense - autocomplete, errors, go to definition
" Requires Node.js installed
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" --- Snippets ---
" Code snippets for faster coding
" Works together with coc.nvim
Plug 'honza/vim-snippets'

" --- Inline Error Checking ---
" Shows errors and warnings on save only
Plug 'dense-analysis/ale'

" --- Rainbow Brackets ---
" Each bracket level gets a different color
Plug 'luochen1990/rainbow'

" --- Auto Close Brackets & Quotes ---
" Automatically closes () {} [] "" ''
Plug 'jiangmiao/auto-pairs'

" --- Comment Lines Instantly ---
" gcc = comment/uncomment current line
" gc = comment selected lines in visual mode
Plug 'tpope/vim-commentary'

" --- Surround Text ---
" cs"' = change "hello" to 'hello'
" ds" = delete surrounding quotes
" ysiw" = wrap word with quotes
Plug 'tpope/vim-surround'

call plug#end()

" ╔══════════════════════════════════════════╗
" ║           COLORSCHEME                   ║
" ╚══════════════════════════════════════════╝

" Sonokai config (most vibrant)
let g:sonokai_style = 'andromeda'    " andromeda is most vibrant
let g:sonokai_enable_italic = 1
let g:sonokai_better_performance = 1

" Everforest config (soothing green)
let g:everforest_background = 'hard'
let g:everforest_enable_italic = 1

" Edge config (soothing purple/blue)
let g:edge_style = 'aura'
let g:edge_enable_italic = 1

" Catppuccin options:
" catppuccin_latte / catppuccin_frappe / catppuccin_macchiato / catppuccin_mocha

" ── Set your colorscheme here ──────────────────────────
" Most vibrant:  sonokai
" Most soothing: everforest / rose-pine / nord
" Best balance:  catppuccin_mocha / edge
colorscheme dracula         " safe default until :PlugInstall done
" colorscheme sonokai       " uncomment after PlugInstall
" colorscheme catppuccin_mocha
" colorscheme everforest
" colorscheme edge
" colorscheme rose-pine
" colorscheme nightfox

" ╔══════════════════════════════════════════╗
" ║           KEYBINDINGS                   ║
" ╚══════════════════════════════════════════╝

" --- NERDTree ---
nnoremap N :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" --- Floaterm ---
nnoremap <C-j> :FloatermToggle<CR>
tnoremap <C-j> <C-\><C-n>:FloatermToggle<CR>

" --- Window Navigation ---
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-Up> <C-w>k
nnoremap <C-Down> <C-w>j

" --- Fuzzy Finder ---
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Rg<CR>

" --- Save like VS Code ---
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i

" --- Ctrl+Space acts as Esc only (insert/visual → normal) ---
" Does nothing in normal mode — simulates Esc
inoremap <C-Space> <Esc>
inoremap <NUL> <Esc>
vnoremap <C-Space> <Esc>
vnoremap <NUL> <Esc>

" --- Disable Ex mode ---
nnoremap Q <nop>

" ╔══════════════════════════════════════════╗
" ║           PLUGIN CONFIG                 ║
" ╚══════════════════════════════════════════╝

" --- NERDTree ---
let g:NERDTreeShowHidden=1           " show hidden files
let g:NERDTreeMinimalUI=1            " cleaner look
let g:NERDTreeAutoDeleteBuffer=1     " auto delete buffer when file deleted

" --- Devicons ---
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1

" --- Airline ---
let g:airline_powerline_fonts = 1           " use powerline symbols
let g:airline#extensions#tabline#enabled=1  " show open buffers at top
let g:airline_theme='dracula'               " airline theme

" --- Illuminate ---
let g:Illuminate_delay = 200         " delay before highlighting (ms)

" --- Rainbow Brackets ---
let g:rainbow_active = 1             " enable rainbow brackets globally

" --- ALE error checking (on save only) ---
let g:ale_linters = {
\   'cpp': ['clang'],
\   'python': ['pylint'],
\   'javascript': ['eslint'],
\}
let g:ale_sign_error = '✘'                   " error sign
let g:ale_sign_warning = '⚠'                 " warning sign
let g:ale_lint_on_save = 1                   " check on save only
let g:ale_lint_on_text_changed = 'never'     " never while typing
let g:ale_lint_on_insert_leave = 0           " not on leaving insert

" --- Startify header ---
let g:startify_custom_header = [
    \ '   ██╗   ██╗██╗███╗   ███╗',
    \ '   ██║   ██║██║████╗ ████║',
    \ '   ██║   ██║██║██╔████╔██║',
    \ '   ╚██╗ ██╔╝██║██║╚██╔╝██║',
    \ '    ╚████╔╝ ██║██║ ╚═╝ ██║',
    \ '     ╚═══╝  ╚═╝╚═╝     ╚═╝',
    \ ]

" --- CoC settings ---
" Tab to cycle autocomplete suggestions
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Enter to confirm autocomplete
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Go to definition
nmap <silent> gd <Plug>(coc-definition)
" Go to references
nmap <silent> gr <Plug>(coc-references)
" Show hover info
nmap <silent> K :call CocActionAsync('doHover')<CR>


set clipboard=unnamedplus