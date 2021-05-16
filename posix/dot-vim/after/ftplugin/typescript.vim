setlocal formatoptions=croql
setlocal comments=://,s:/*,m:*,ex:*/
setlocal commentstring=//\ %s

setlocal expandtab
setlocal autoindent
setlocal smartindent
setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2

setlocal makeprg=yarn\ run\ -s\ tsc
setlocal formatprg=prettier\ --parser\ typescript
