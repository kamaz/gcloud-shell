" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
" colorscheme OceanicNext
" let g:airline_theme='oceanicnext'
set background=dark
autocmd vimenter * colorscheme gruvbox
let g:airline_theme='gruvbox'
