if exists("current_compiler")
  finish
endif
let current_compiler = "jshint"

CompilerSet errorformat=%f:\ line\ %l\\,\ col\ %c\\,\ %m
CompilerSet makeprg=jshint\ %
