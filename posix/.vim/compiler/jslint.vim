if exists("current_compiler")
  finish
endif
let current_compiler = "jslint"
CompilerSet makeprg=jslint\ --nomen\ --browser\ %
CompilerSet errorformat=%-P%f,
                    \%A%>%\\s%\\?#%*\\d\ %m,%Z%.%#Line\ %l\\,\ Pos\ %c,
                    \%-G%f\ is\ OK.,%-Q
