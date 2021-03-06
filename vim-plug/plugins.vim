
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Surround plugin"
    Plug 'tpope/vim-surround' 
    " Autocomplete"
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    "Plugin for git
    Plug 'tpope/vim-fugitive'
    "Shows bottom status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    "Fuzzy finder
    Plug 'junegunn/fzf' 
    Plug 'junegunn/fzf.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'andymass/vim-matchup'
    Plug 'pangloss/vim-javascript'
    Plug 'joshdick/onedark.vim'
    Plug 'tpope/vim-commentary'
    Plug 'mattn/emmet-vim'
call plug#end()
