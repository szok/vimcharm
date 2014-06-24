filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on


" ============================================================================
" Settings
" ============================================================================
set bs=indent,eol,start
set mouse=a
set cursorline
set number


" ============================================================================
" Enable highlight, incremental and smart case searching.
" ============================================================================
set hlsearch
set incsearch
set ignorecase
set smartcase


" ============================================================================
" Disable backup and swap files.
" ============================================================================
set nobackup
set nowritebackup
set noswapfile


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
" Color scheme.
" ============================================================================
set t_Co=256
colorscheme wombat256mod


" ============================================================================
" Powerline -- https://github.com/Lokaltog/powerline
" ============================================================================
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
