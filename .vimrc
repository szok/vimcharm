filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" ============================================================================
" Keymapping
" ============================================================================

let mapleader = ","

" ============================================================================
" Color scheme
" ============================================================================
set t_Co=256
set colorcolumn=120
autocmd ColorScheme * highlight ColorColumn ctermbg=235
colorscheme wombat256mod
