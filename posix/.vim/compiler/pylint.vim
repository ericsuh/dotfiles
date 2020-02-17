if exists('current_compiler')
  finish
endif
let current_compiler = 'pylint'
CompilerSet makeprg=pylint\ -f\ parseable\ -r\ n\ %
CompilerSet efm=%A%f:%l:\ [%t%.%#]\ %m,%Z%p^^,%-C%.%#,%-GNo%.%#
