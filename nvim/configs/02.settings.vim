" 02.settings.vim: quản lý setting của neovim
set encoding=UTF-8

set t_Co=256

" setting options
" Numbers
set relativenumber
set number
set numberwidth=5

" mapping
" Leader
let mapleader=" "

set backspace=2
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
"set autowrite     " Automatically :write before running commands

set autoindent
set smartindent

set autoread
set autowrite

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Make it obvious where 80 characters is
"set textwidth=100
"set colorcolumn=+1

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Autocomplete with dictionary words when spell check is on
set complete+=kspel

" Always use vertical diffs
set diffopt+=vertical

" Copy to clipboard
set clipboard=unnamed

" color word
set lazyredraw
set termguicolors

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif


augroup vimrcEx
  autocmd!
  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
        \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
augroup END
