try 
  if (has("termguicolors"))
   set termguicolors
  endif

  " Theme
  syntax enable
  colorscheme gruvbox
  " autocmd vimenter * colorscheme gruvbox
  let g:airline_theme='gruvbox'
  let g:gruvbox_contrast_dark='hard'
  let g:gruvbox_contrast_light='hard'
catch
  echo 'Grubbox not installed. It should work after running :PlugInstall'
endtry
