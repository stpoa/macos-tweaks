" Plugins
  call plug#begin('~/.vim/plugged')

  " Syntax
  Plug 'darfink/vim-plist'
  Plug 'tomlion/vim-solidity'
  Plug 'w0rp/ale'
  Plug 'Valloric/YouCompleteMe'
  Plug 'ternjs/tern_for_vim'
  Plug 'mxw/vim-jsx'
  Plug 'jiangmiao/auto-pairs'
  Plug 'djoshea/vim-autoread'

  " UI
  Plug 'airblade/vim-gitgutter'
  Plug 'altercation/vim-colors-solarized'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Utilities
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
  set background=light
  colorscheme solarized

  set number
  set number relativenumber
  set cursorcolumn
  set cursorline
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  augroup END

  set colorcolumn=80
  highlight EndOfBuffer ctermfg=black " color tildas

" Startup 
  "autocmd vimenter * NERDTree
  autocmd CompleteDone * pclose
