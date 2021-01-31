" 01.plugins.vim : quản lý các plugins

"Vim Plug Manager
call plug#begin('~/.config/nvim/bundle')
"// tất cả các plugin phải nằm giữa hai hàm này plug#begin và plug#end

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'sirver/ultisnips'

Plug 'neoclide/coc.nvim'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/syntastic'
Plug 'pangloss/vim-javascript'


call plug#end()
