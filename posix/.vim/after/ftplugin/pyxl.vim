setlocal formatoptions=croql
setlocal comments=:#
setlocal commentstring=#\ %s

setlocal foldmethod=indent
setlocal foldlevel=99

setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal smarttab
setlocal expandtab
setlocal nosmartindent

let g:syntastic_python_checkers=['pylint']

set omnifunc=pythoncomplete#Complete
