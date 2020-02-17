if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

setlocal formatoptions=croql
setlocal comments=:--,s:{-,m:-,ex:-}
setlocal commentstring=--\ %s

setlocal expandtab
setlocal shiftwidth=2
setlocal tabstop=2
