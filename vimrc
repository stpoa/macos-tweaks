" disable backup and swap files
  set nobackup
  set nowritebackup
  set noswapfile

" clipboard
  set clipboard=unnamed

" syntax

  " default
  set backspace=2 shiftwidth=2 tabstop=2 expandtab

  " solidity
  autocmd filetype solidity setlocal ts=4 sw=4 expandtab
  autocmd filetype solidity set colorcolumn=100
  let g:syntastic_javascript_checkers=['jscs','standard']
  let g:syntastic_solidity_checkers=['solc', 'solhint', 'solium']
  let g:syntastic_javascript_checkers=['standard']
  let g:syntastic_javascript_standard_exec = 'semistandard'

" keyboard
  nmap ; :
  noremap ;; ;

  ino " ""<left>
  ino ' ''<left>
  ino ( ()<left>
  ino [ []<left>
  ino { {}<left>
  ino {<CR> {<CR>}<ESC>O
  ino {;<CR> {<CR>};<ESC>O

" ui
  syntax enable
  set background=dark
  colorscheme alduin
  let g:airline_theme='angr'
  set nonumber

  " Highlight trailing whitespaces
  highlight TrailingWhitespace ctermbg=red guibg=red
  match TrailingWhitespace /\s\+$/

  augroup HighlightTrailingWhitespace
    autocmd BufEnter * match TrailingWhitespace /\s\+$/
    autocmd BufWinEnter * match TrailingWhitespace /\s\+$/
    autocmd WinEnter * match TrailingWhitespace /\s\+$/
    autocmd InsertEnter * match TrailingWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match TrailingWhitespace /\s\+$/
    autocmd WinLeave * call clearmatches()
    autocmd BufWinLeave * call clearmatches()
    autocmd BufLeave * call clearmatches()
  augroup END

" keyboard
  nmap ; :
  noremap ;; ;

  set colorcolumn=80
  highlight endofbuffer ctermfg=black " color tildas
  set noshowmode

" startup
  autocmd completedone * pclose

" plugins
call plug#begin('~/.vim/plugged')

  Plug 'altercation/vim-colors-solarized'
  Plug 'tomlion/vim-solidity'
  "Plug 'w0rp/ale'
  Plug 'valloric/youcompleteme'
  Plug 'scrooloose/syntastic'
  Plug 'airblade/vim-gitgutter'
  Plug 'alessandroyorba/alduin'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'leafgarland/typescript-vim'
  Plug 'kien/ctrlp.vim'

cutocmd CompleteDone * pclose
