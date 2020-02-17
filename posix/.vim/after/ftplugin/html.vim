if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

setlocal comments=s:<!--,m:--,ex:-->
setlocal expandtab
setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2
set omnifunc=htmlcomplete#CompleteTags
