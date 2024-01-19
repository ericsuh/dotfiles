"""""""""""
" Plugins "

call plug#begin('~/.config/nvim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kevinoid/vim-jsonc'
Plug 'hashivim/vim-terraform'

call plug#end()

nnoremap <leader>e :call CocActionAsync('diagnosticInfo')<CR>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <nowait> <leader>ca <Plug>(coc-codeaction)
nmap <nowait> <leader>rn <Plug>(coc-rename)
vmap <nowait> <leader>f <Plug>(coc-format-selected)
nnoremap <nowait> <leader>f :call CocActionAsync('format')<CR>

nnoremap <nowait> <leader>rg :<C-u>CocSearch<CR>
nmap <nowait> gD <Plug>(coc-declaration)
nmap <nowait> gd <Plug>(coc-definition)
nmap <nowait> gt <Plug>(coc-type-definition)
nmap <nowait> gi <Plug>(coc-implementation)
nmap <nowait> gr <Plug>(coc-references)

nnoremap <nowait> <leader>K :call CocActionAsync('doHover')<CR>
nnoremap <nowait> <leader><C-k> :call CocActionAsync('showSignatureHelp')<CR>
inoremap <nowait> <C-k> :call CocActionAsync('showSignatureHelp')<CR>

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

hi Pmenu ctermfg=black ctermbg=gray guibg=gray
hi FgCocErrorFloatBgCocFloating ctermfg=black ctermbg=gray guibg=gray

command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

let g:coc_global_extensions = ['coc-css', 'coc-eslint', 'coc-git', 'coc-go', 'coc-jedi', 'coc-json', 'coc-prettier', 'coc-sh', 'coc-toml', 'coc-sql', 'coc-tsserver', 'coc-yaml']

command! -nargs=0 Prettier :CocCommand prettier.formatFile
