" standart .vimrc content
" and add:

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

" add scheme autoindenter
autocmd filetype lisp,scheme setlocal equalprg=$SICP/scmindent.rkt

" add map for λ-symbol
inoremap <C-\> <C-v>u03bb
