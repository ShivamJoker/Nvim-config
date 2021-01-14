source $HOME/.config/nvim/vim-plug/plugins.vim
" Enable relative line
set nu! rnu!

"Enable mouse
set mouse=a

" map nerdtree
map <C-n> :NERDTreeToggle<CR>

" map jj to escape
inoremap jj <Esc>
inoremap kk <Esc>
inoremap jk <Esc>

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Color scheme
syntax on
colorscheme onedark
let g:airline_theme='onedark'

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
