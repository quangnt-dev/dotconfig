" 01.plugins.vim : quản lý các plugins
" 02.settings.vim: quản lý setting của neovim
" 03.plugin-settings.vim : quản lý setting của plugins.


"// thêm script này vào file init.vim
for f in split(glob('~/.config/nvim/configs/*.vim'), '\n')
   exe 'source' f
endfor


