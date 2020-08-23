" === coc.nvim === "
try
  "   <leader>dd    - Jump to definition of current symbol
  "   <leader>dr    - Jump to references of current symbol
  "   <leader>dj    - Jump to implementation of current symbol
  "   <leader>ds    - Fuzzy search current project symbols
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gr <Plug>(coc-references)
  nmap <silent> gj <Plug>(coc-implementation)
  nnoremap <silent> <leader>ds :<C-u>CocList -I -N --top symbols<CR>
catch
  echo 'Coc not installed. It should work after running :PlugInstall'
endtry
