filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on


" ============================================================================
" Settings
" ============================================================================
set cursorline
set number


" ============================================================================
" Keymapping
" ============================================================================
let mapleader = ","


" ============================================================================
" Enable highlighting of trailing spaces.
" ----------------------------------------------------------------------------
" MUST be inserted BEFORE the colorscheme command.
" See: http://vim.wikia.com/wiki/Highlight_unwanted_spaces
" ============================================================================
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


" ============================================================================
" Set right margin line.
" ----------------------------------------------------------------------------
" MUST be inserted BEFORE the colorscheme command.
" ============================================================================
set colorcolumn=120
autocmd ColorScheme * highlight ColorColumn ctermbg=235


" ============================================================================
" Color scheme
" ============================================================================
set t_Co=256
colorscheme wombat256mod
