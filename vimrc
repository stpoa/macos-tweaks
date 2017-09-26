" Clipboard
set clipboard=unnamed

" Keyboard
set backspace=2
set shiftwidth=2
set tabstop=2
set expandtab

" UI
set number
highlight EndOfBuffer ctermfg=black " color tildas

" Plugins
call plug#begin('~/.vim/plugged')

  " Syntax
  Plug 'darfink/vim-plist'
  Plug 'tomlion/vim-solidity'

  " UI
  Plug 'airblade/vim-gitgutter'

call plug#end()

