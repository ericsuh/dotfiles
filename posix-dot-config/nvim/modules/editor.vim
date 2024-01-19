
""" Search and navigation

set showmatch               " show matching brackets
set ignorecase              " default case-insensitive matching
set hlsearch                " highlight search results
set smartcase
nnoremap <leader>/ :noh<CR>  " Allows ,/ to clear search highlights
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case

nnoremap ' `
nnoremap ` '

""" Indentation

set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set autoindent
filetype plugin indent on   " file-type specific autoindentation

set completeopt=longest,menuone
set wildmode=longest,list   " tab completions
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

""" Editing

set hidden " Work with multiple buffers without having to save
inoremap <C-space> <C-x><C-o>

set clipboard=unnamed
nnoremap Y yy " Allows ,/ to clear search highlights

set background=light
