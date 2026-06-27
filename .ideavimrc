" set directory to store backup, swp, and undo files
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" set dark background colors
set background=dark

" enable backspace at end of line and indents
set backspace=indent,eol,start

" Disable compatibility with vi which can cause unexpected issues
set nocompatible

" Enable type file detection. Vim will be able to detect the type of file in
" use
filetype on

" Enable plugins and load plugins for the detected file type 
filetype plugin on

" Load an indent file for the detected file type 
filetype indent on

" Turn syntax highlighting on
syntax on

" set shift width to 4 spaces 
set shiftwidth=4

" set tab width to 4 spaces
set tabstop=4

" use space characters instead of tabs
set expandtab

" Do not let cursor scroll below or above N number of lines when scrolling
set scrolloff=10

" Wrap lines. Allow long lines to extend as far as the line goes. 
set wrap linebreak

" while searching through file incrementally highlight matching characters as
" you typ
set incsearch

" Ignore capital letters during search
set ignorecase

" Override ignorecase setting from above if searching for capital letters
set smartcase

" Show partial command you type in the last line of the screen
set showcmd

" Show the mode you are on in the last line of the file
set showmode

" Show matching words during a search
set showmatch

" Use highlighting when doing a search 
set hlsearch

" set the cursor style for all modes
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Set the commands to save in history (default is 20)
set history=1000

" set line number 
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" set leader
let mapleader=" "

" set the status line on top bar
set statusline+=%F

" mappings
omap L & 
omap H ^
vmap > >>
vmap < <<
map L $
map H ^ 
map J 5j
map K 5k
map <Leader><Enter> i<Enter><Esc>
nnoremap th :tabfirst<CR>
nnoremap tp :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnext<CR>
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>
imap jj <Esc>

" copy and paste
inoremap <C-v> <Esc>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d
vnoremap <C-x> "+c

" use system clipboard
set clipboard=unnamed

" autosave
autocmd TextChanged,TextChangedI * silent write

