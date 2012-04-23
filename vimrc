set nocompatible
set visualbell
set encoding=utf-8

set number
nnoremap ,n :set nonumber!<CR>:set foldcolumn=0<CR>
set hidden " for working with multiple buffers
nnoremap ' `
nnoremap ` '
let mapleader = ","
set showcmd
set laststatus=2
set wildmenu
set wildmode=list:longest

"" Editing
set showmatch " Parentheses and braces
set backspace=indent,eol,start " fix backspace
if exists('+colorcolumn')
	set colorcolumn=80
else
	au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
set list
set listchars=tab:>\ ,trail:~,extends:>,precedes:<

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
" Allows ,/ to clear search highlights
nnoremap ,/ :noh<CR>

"" Whitespace, syntax

filetype plugin indent on
set autoindent " Copy indent from the row above
set softtabstop=4
set shiftwidth=4 tabstop=4
set noexpandtab

syntax enable
set background=dark
colorscheme koehler

hi StatusLine term=NONE cterm=NONE gui=NONE ctermbg=white ctermfg=black  guibg=white guifg=black
hi StatusLineNC term=NONE cterm=NONE gui=NONE ctermbg=white ctermfg=darkgray guibg=white guifg=darkgray

set statusline =
set statusline +=\ %n             "buffer number
set statusline +=\ %y             "file type
set statusline +=\ %<\"%f\"       "full path
set statusline +=\ %m             "modified flag
set statusline +=%r               "read-only flag
" set statusline +=%=             "left-right seperator
set statusline +=\ Line\ %l\ of\ %L  "current line / total lines
set statusline +=\ --%P--      " percent of file
set statusline +=\ Col\ %c            "column number
