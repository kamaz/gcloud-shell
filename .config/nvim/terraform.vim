" Allow vim-terraform to automatically format *.tf and *.tfvars files with terraform fmt.
try
  let g:terraform_fmt_on_save = 1
catch
  echo 'Terraform not installed. It should work after running :PlugInstall'
endtry
