" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.config/nvim/plugged')
" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse

" Intellisense Engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}

" Navigation
" Alternative is to use fzf
"   Plug 'junegunn/fzf.vim'
Plug 'Shougo/denite.nvim'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'josa42/coc-go', {'do': 'yarn install --frozen-lockfile'}

" Haskell Bundle
Plug 'eagletmt/neco-ghc'
Plug 'dag/vim2hs'
Plug 'pbrisbin/vim-syntax-shakespeare'

" NERDTree
Plug 'scrooloose/nerdtree'

"
" Helps with commenting stuff out
"
Plug 'tpope/vim-commentary'

"
" Code Snipppets
"
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"
" Theming
"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'

"
" A collection of language packs for Vim.
"
Plug 'sheerun/vim-polyglot'

"
" Surrond tool
"
Plug 'tpope/vim-surround'

"
" Terrafrom
"
Plug 'hashivim/vim-terraform'

call plug#end()

