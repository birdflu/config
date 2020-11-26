# standart .vimrc content
# and add:

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
autocmd filetype lisp,scheme setlocal equalprg=$SICP/scmindent.rkt
