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
" Allows ,/ to clear search highlights
nnoremap <leader>/ :noh<CR>
hi Search ctermbg=white ctermfg=black guibg=lightblue

""" Solarized

let g:solarized_termtrans=1
colorscheme solarized

""" Syntax highlighting

syntax enable
set background=light
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
hi ErrorMsg ctermbg=black guibg=white guifg=red

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
hi StatusLine term=NONE cterm=NONE gui=NONE ctermbg=darkgray ctermfg=black  guibg=black guifg=white
hi StatusLineNC term=NONE cterm=NONE gui=NONE ctermbg=darkgray ctermfg=white guibg=darkgray guifg=white

set statusline =
set statusline +=\ %n             "buffer number
set statusline +=\ %y             "file type
set statusline +=\ %{fugitive#statusline()}      "git branch
set statusline +=\ %<\"%f\"       "full path
set statusline +=\ %m             "modified flag
set statusline +=%r               "read-only flag
" set statusline +=%=             "left-right seperator
set statusline +=\ Line\ %l\ of\ %L  "current line / total lines
set statusline +=\ --%P--      " percent of file
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