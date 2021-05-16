setlocal formatoptions=croql
setlocal comments=://,s:/*,m:*,ex:*/
setlocal commentstring=//\ %s

setlocal expandtab
setlocal autoindent
setlocal smartindent
setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4

let b:ale_linters=['tsserver']
let b:ale_fixers=['prettier', 'tsserver']
let b:ale_completion_enabled = 1
let b:ale_fix_on_save=1

setlocal makeprg=yarn\ run\ -s\ tsc
setlocal formatprg=prettier\ --parser\ typescript
set omnifunc=ale#completion#OmniFunc
" compiler tsc
