" Plugins
  call plug#begin('~/.vim/plugged')

  " Syntax
  Plug 'darfink/vim-plist'
  Plug 'tomlion/vim-solidity'
  Plug 'w0rp/ale'
  Plug 'Valloric/YouCompleteMe'
  Plug 'ternjs/tern_for_vim'

  " UI
  Plug 'airblade/vim-gitgutter'
  Plug 'altercation/vim-colors-solarized'
  Plug 'scrooloose/nerdtree'

  call plug#end()

" Clipboard
  set clipboard=unnamed

" Syntax

  " Default
  set backspace=2
  set shiftwidth=2
  set tabstop=2
  set expandtab

  " JavaScript
  let g:ale_linters = {'javascript': ['standard']}

  " Solidity
  autocmd Filetype solidity setlocal ts=4 sw=4 expandtab


" UI
  syntax enable
  set background=dark
  colorscheme solarized

  set number
  highlight EndOfBuffer ctermfg=black " color tildas

" Startup 
  "autocmd vimenter * NERDTree
  autocmd CompleteDone * pclose
