if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

" Remove whitespace suffix
autocmd BufWritePre <buffer> :%s/\s\+$//e

setlocal formatoptions=croql
setlocal comments=:#
setlocal commentstring=#\ %s

setlocal foldmethod=indent
setlocal foldlevel=3
setlocal foldnestmax=2
setlocal foldignore=''

setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal smarttab
setlocal expandtab
setlocal nosmartindent

set omnifunc=pythoncomplete#Complete
