scriptencoding utf-8
let mapleader=","

" Set line number to be relative
set number
set rnu

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

set fileformats=unix,dos,mac

" Fix backspace indent
set backspace=indent,eol,start

" Hides buffers instead of closing them
set hidden

" === TAB/Space settings === "
" Insert spaces when TAB is pressed.
set expandtab

" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2

" Indentation amount for < and > commands.
set shiftwidth=2

" do not wrap long lines by default
set nowrap

" Don't highlight current cursor line
set nocursorline

" Disable line/column number in status line
" Shows up in preview window when airline is disabled if not
set noruler

" Only one line for command line
set cmdheight=1

"
" Switching windows
"
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"
" Buffers
"

" Navigation
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

" Close buffer
noremap <leader>c :bd<CR>

" Hides buffers instead of closing them
set hidden

"
" Yank and paste with the system clipboard
"
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

"
" Searching
"
set hlsearch
set incsearch
set ignorecase
set smartcase

" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" terminal emulation
if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif
nnoremap <silent> <leader>sh :terminal<CR>
tnoremap <c-]><c-]> <c-\><c-n>

"
"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"   <Space> - PageDown
"   -       - PageUp
noremap <Space> <PageDown>
noremap - <PageUp>

" Set backups
if has('persistent_undo')
  set undofile
  set undolevels=3000
  set undoreload=10000
endif
set backupdir=~/.local/share/nvim/backup " Don't put backups in current dir
set backup
set noswapfile

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall


"
" Plugins Bootstrap
"
source ~/.config/nvim/plugins.vim

"
" Plugins Configuration
"
source ~/.config/nvim/airline.vim
source ~/.config/nvim/commands.vim
" source ~/.config/nvim/denite.vim
source ~/.config/nvim/devicons.vim
source ~/.config/nvim/functions.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/git.vim
source ~/.config/nvim/go.vim
source ~/.config/nvim/haskell.vim
source ~/.config/nvim/nerdtree.vim
" source ~/.config/nvim/oceanicnext.vim
source ~/.config/nvim/gruvbox.vim
source ~/.config/nvim/snippets.vim
source ~/.config/nvim/ui.vim
source ~/.config/nvim/terraform.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/rooter.vim

" UI
"
set background=dark
