""" Visual settings
set visualbell
set number                  " line numbers
set background=light
set foldmethod=manual
syntax on                   " syntax highlighting

set statusline =
set statusline +=\ %n                "buffer number
set statusline +=\ %y                "file type
set statusline +=\ %<\"%f\"          "full path
set statusline +=\ %m                "modified flag
set statusline +=%r                  "read-only flag
set statusline +=\ Line\ %l\ of\ %L  "current line / total lines
set statusline +=\ Col\ %c           "column number

