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

syntax enable
set background=dark
colorscheme dim

""" Handling solarized colors
"
" " Set to "dark" or "light"
" let s:bg_type = 'dark'
" 
" " ANSI-16 Solarized colors
" let g:solarized_termcolors=16
" let s:sol_base03 = 8
" let s:sol_base02 = 0
" let s:sol_base01 = 10
" let s:sol_base00 = 11
" let s:sol_base0 = 12
" let s:sol_base1 = 14
" let s:sol_base2 = 7
" let s:sol_base3 = 15
" let s:sol_yellow = 3
" let s:sol_orange = 9
" let s:sol_red = 1
" let s:sol_magenta = 5
" let s:sol_violet = 13
" let s:sol_blue = 4
" let s:sol_cyan = 6
" let s:sol_green = 2
" 
" if s:bg_type ==# 'dark'
"   let s:status_line_bg = s:sol_base02
"   let s:status_line_fg = s:sol_base1
"   let s:status_line_nc_bg = s:sol_base03
"   let s:status_line_nc_fg = s:sol_base01
"   let s:error_msg_bg = s:sol_base03
"   let s:error_msg_fg = s:sol_orange
"   let s:search_bg = s:sol_red
"   let s:search_fg = s:sol_base3
" else
"   let s:status_line_bg = s:sol_base2
"   let s:status_line_fg = s:sol_base01
"   let s:status_line_nc_bg = s:sol_base3
"   let s:status_line_nc_fg = s:sol_base1
"   let s:error_msg_bg = s:sol_base3
"   let s:error_msg_fg = s:sol_orange
"   let s:search_bg = s:sol_red
"   let s:search_fg = s:sol_base3
" endif
" 
" exe "set background=" .s:bg_type
" colorscheme solarized
" NOTE:
"   Color settings for `StatusLine`, `StatusLineNC`, `ErrorMsg`, and `Search`
"   are inverted from what you normally think, e.g. `ctermfg` sets the bg color
" exe "hi StatusLine term=NONE ctermfg=" .s:status_line_bg ." ctermbg=" .s:status_line_fg
" exe "hi StatusLineNC term=NONE ctermfg=" .s:status_line_nc_bg ." ctermbg=" .s:status_line_nc_fg
" exe "hi ErrorMsg term=NONE ctermfg=" .s:error_msg_bg ." ctermbg=" .s:error_msg_fg 
" exe "hi Search term=NONE ctermfg=" .s:search_bg ." ctermbg=" .s:search_fg

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
