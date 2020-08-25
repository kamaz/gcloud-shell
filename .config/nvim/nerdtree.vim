  " === Configuration === "
try
  let g:NERDTreeWinSize = 50

  " Show hidden files/directories
  let g:NERDTreeShowHidden = 1

  " Remove bookmarks and help text from NERDTree
  let g:NERDTreeMinimalUI = 1

  let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']

  let g:NERDTreeShowBookmarks=1
  let g:nerdtree_tabs_focus_on_files=1
  let g:NERDTreeChDirMode=2
  let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
  "
  " === Key Mapping === "
  "  <leader>n - Toggle NERDTree on/off
  "  <leader>f - Opens current file location in NERDTree
  nmap <leader>no :NERDTreeToggle<CR>
  nmap <leader>nf :NERDTreeFind<CR>
catch
  echo 'NERDTree not installed. It should work after running :PlugInstall'
endtry
