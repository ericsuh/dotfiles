if exists("current_compiler")
  finish
endif
let current_compiler = "tsc"

" if has('win32')
"   let hasYarn = :silent exe "normal system('Get-Command yarn')"
" else
"   let hasYarn = :silent exe "normal system('command -v yarn')"
" endif

setlocal makeprg='yarn run tsc'
