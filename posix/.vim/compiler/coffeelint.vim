if exists('current_compiler')
  finish
endif
let current_compiler = 'coffeelint'
CompilerSet makeprg=coffeelint\ -f\ ~/.coffeelint.json\ %
CompilerSet errorformat=%-P%.%#[31m%f[39m%.%#,%.%#[31m#%l[39m:\ %m,%-G%.%#
