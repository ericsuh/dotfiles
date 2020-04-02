"""""""""""""""""""""
" Core vim settings "

set nocompatible
set visualbell
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
let mapleader = ","
nnoremap ' `
nnoremap ` '

""" Editing

set hidden " Work with multiple buffers without having to save
autocmd QuickFixCmdPost * nested cwindow | redraw!
filetype plugin on

""" Line numbering

set number
nnoremap <leader>n :set nonumber!<CR>:set foldcolumn=0<CR>

""" Searching

set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <leader>/ :noh<CR>  " Allows ,/ to clear search highlights

""" Colorscheme
" NOTE:
"   StatusLine and StatusLineNC color setting names are inverted
"   compared to what you would normally think.
"   (e.g. set `ctermfg` to desired bg color).

syntax enable

" Solarized Dark colorscheme

set background=dark
let g:solarized_termcolors=16
colorscheme solarized

" Statusline colors
" Desired colorscheme for StatusLine with dark background:
"     StatusLine bg=base03, fg=base1
"     StatusLineNC bg=base02, fg=base1
hi StatusLine term=NONE ctermfg=15 ctermbg=10
hi StatusLineNC term=NONE ctermfg=7 ctermbg=14
hi ErrorMsg term=NONE ctermbg=9 ctermfg=0
hi Search term=NONE ctermbg=11 ctermfg=7

"" Solarized Light colorscheme
"" Desired colorscheme for StatusLine with light background:
""     StatusLine bg=base2, fg=base01
""     StatusLineNC bg=base2, fg=base1
" hi StatusLine term=NONE ctermfg=8 ctermbg=14
" hi StatusLineNC term=NONE ctermfg=0 ctermbg=14
" hi ErrorMsg term=NONE ctermfg=8 ctermbg=9
" hi Search term=NONE ctermfg=11 ctermbg=7 

""" Syntax highlighting settings

set showmatch " Parentheses and braces
set backspace=indent,eol,start " fix backspace
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
set list
set listchars=tab:>\ ,trail:~,extends:>,precedes:<
set cursorline

""" Whitespace and folds

filetype indent on
set autoindent  " Copy indent from the row above
set softtabstop=4 shiftwidth=4 tabstop=4
set expandtab
set foldmethod=manual

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

""" Command and status lines

set showcmd
set wildmenu  " command autocomplete
set wildmode=list:longest

set laststatus=2
set statusline =
set statusline +=\ %n             "buffer number
set statusline +=\ %y             "file type
set statusline +=\ %{fugitive#statusline()}      "git branch
set statusline +=\ %<\"%f\"       "full path
set statusline +=\ %m             "modified flag
set statusline +=%r               "read-only flag
" set statusline +=%=             "left-right seperator
set statusline +=\ Line\ %l\ of\ %L  "current line / total lines
set statusline +=\ Col\ %c            "column number

""" Omnicomplete

" Menu appears even with one match, inserts longest common text of all matches
set completeopt=longest,menuone

" Enter selects highlighted omnicomplete menu item
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"""""""""""""""""""
" Plugin settings "

""" ctags, Tagbar

set tags=./tags,./.tags;
command! -bar Retag :call system('ctags -R --python-kinds=-i -f .tags .')
nnoremap <leader>t :TagbarToggle<CR>

"""" Indent Guides

nnoremap <silent> <leader>ig <Plug>IndentGuidesToggle
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#afffd7   ctermbg=158
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#afffff ctermbg=159

if filereadable("~/.vimrc_os")
	source "~/.vimrc_os"
endif
if filereadable("~/.vimrc_local")
	source "~/.vimrc_local"
endif
