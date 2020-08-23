"
" snippets
"
try 
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<c-b>"
  let g:UltiSnipsEditSplit="vertical"
catch
  echo 'Ultisnips not installed. It should work after running :PlugInstall'
endtry
