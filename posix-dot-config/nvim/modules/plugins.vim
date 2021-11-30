"""""""""""
" Plugins "

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-prettier'
Plug 'kevinoid/vim-jsonc'

call plug#end()

nnoremap <leader>ca :CocAction<CR>
nnoremap <leader>rg :CocSearch<CR>
nnoremap <leader>e :call CocAction('diagnosticInfo')<CR>
nnoremap <leader>K :call CocAction('doHover')<CR>
nnoremap <leader>f :call <Plug>(coc-format-selected)
vnoremap <leader>f :call <Plug>(coc-format-selected)
nnoremap <leader><C-k> :call CocAction('showSignatureHelp')<CR>
nnoremap <leader>rn :call CocAction('rename')<CR>
nnoremap gD :call CocAction('jumpDeclaration')<CR>
nnoremap gd :call CocAction('jumpDefinition')<CR>
nnoremap gi :call CocAction('jumpImplementation')<CR>
nnoremap gt :call CocAction('jumpTypeDefinition')<CR>
nnoremap gr :call CocAction('jumpReferences')<CR>
inoremap <C-k> :call CocAction('showSignatureHelp')<CR>

hi Pmenu ctermfg=black ctermbg=gray guibg=gray
hi FgCocErrorFloatBgCocFloating ctermfg=black ctermbg=gray guibg=gray

command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-yaml', 'coc-prettier']

command! -nargs=0 Prettier :CocCommand prettier.formatFile
