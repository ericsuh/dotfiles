if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

setlocal formatoptions=croql
setlocal comments=://,s:/*,m:*,ex:*/
setlocal commentstring=//\ %s

setlocal expandtab
setlocal autoindent
setlocal smartindent
setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4

compiler jslint

set omnifunc=javascriptcomplete#CompleteJS
