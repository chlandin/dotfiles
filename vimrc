" No compablity with vi
set nocompatible

" Pathogen - www.github.com/tpope/vim-pathogen -

filetype off
call pathogen#infect()
call pathogen#helptags()

syntax on
syntax enable
filetype plugin indent on

" end Pathogen

" *********************************************
" *                 Settings                  *
" *********************************************

" Default text encoding
set encoding=utf-8

" Treat all numerals as decimals
set nrformats=

" Enable mouse
set mouse=a

"Change cursor in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Prevent security expolits
set modelines=0

" Show line numbers
set number

" Show ruler bar
set ruler

" Show commands
set showcmd

" Handle text wrapping
set wrap
set linebreak
set nolist
" set showbreak=↪
set showbreak=>\ 
set textwidth=0
set wrapmargin=0
set formatoptions+=l

" Keep at least 5 lines above/below the cursor
set scrolloff=5

" Make the command-line completion better
set wildmenu
set wildmode=list:longest,full

" Turn on Omni completion
set ofu=syntaxcomplete#Complete

" Full PHP auto complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Color of pop up menu
highlight Pmenu guibg=brown gui=bold

" Visual bell insted of beeping
set vb

" Set the textwidth to 80 chars
"set textwidth=80

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=200

" Expand tabs to four spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Highlight search result
set hlsearch

" Highlight as you type in search
set incsearch

" Prevent Vim backup
set nobackup
set noswapfile

"Not case sensitive search
set ignorecase

"Smart case, the = The, The = The (not the)
set smartcase

"Move cursor to matching result
set incsearch

" Transparent background

" GUI Vim settings
if has("gui_running") 
    set gfn=Monaco:h10
    colorscheme desert
    set guioptions-=r   " Remove scroll bar right
    :set transparency=5 " Transparent background
    set go-=L           " Remove scroll bar left
    "set fu              " Full screen
    " set background=dark
    highlight Cursor guifg=black guibg=yellow
    let g:netrw_liststyle=3 " Use tree-mode as default view
    let g:netrw_preview=1 " Preview window shown in a vertical split using 'p'
endif 

" *********************************************
" *               Key Bindings                *
" *********************************************

" change the mapleader from \ to ,
let mapleader=","

" omnicompletion : words
inoremap <leader>, <C-x><C-o>

" paste yanks in insert mode
inoremap <leader>0 <C-r>0

" Disable arrow keys in normal mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Disable arrow keys in insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"Disable scroll wheel pasting
nnoremap <MiddleMouse> <Nop>
nnoremap <2-MiddleMouse> <Nop>
nnoremap <3-MiddleMouse> <Nop>
nnoremap <4-MiddleMouse> <Nop>

inoremap <MiddleMouse> <Nop>
inoremap <2-MiddleMouse> <Nop>
inoremap <3-MiddleMouse> <Nop>
inoremap <4-MiddleMouse> <Nop>

" Move by line on screen, not in file
nnoremap j gj
nnoremap k gk

" Use jj to exit insert mode
inoremap jj <ESC>

" Special characters
inoremap <leader>a [
inoremap <leader>s ]
inoremap <leader>d (
inoremap <leader>f )
inoremap <leader>e {
inoremap <leader>r }
inoremap <leader>v "
inoremap <leader>g '
inoremap <leader>t $
inoremap <leader>c =

" Direkt Online encoding mess
inoremap <leader>å &aring;
inoremap <leader>Å &Aring;
inoremap <leader>ä &auml;
inoremap <leader>Ä &Auml;
inoremap <leader>ö &ouml;
inoremap <leader>Ö &Ouml;

" Swe keyboard friendly bol and eol, by screen line
" Normal mode
nnoremap B ^
nnoremap B g^
nnoremap E $
nnoremap E g$

" Visual mode
vnoremap B ^
vnoremap B g^
vnoremap E $
vnoremap E g$

" Toggle Paste mode, turns off auto indent
set pastetoggle=<F2>

" *********************************************
" *        Local Vimrc Customization          *
" *********************************************

" Reload .vimrc instantly when saved
augroup reload_vimrc " {
	autocmd!
       	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }       

" *********************************************
" *           Plugin Customization            *
" *********************************************

" html snippets in php files
au BufRead,BufNewFile *.php set ft=php.html

"Laravel filetypes
autocmd FileType *.php set ft=php.laravel.html
autocmd BufEnter *.blade.php set ft=php.laravel.blade.html

" Give a shortcut key to NERD Tree
map <F7> :NERDTreeToggle<CR>

" *********************************************
" *                 Functions                 *
" *********************************************
