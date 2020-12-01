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

" vim-plug section
"
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" and then exec :PlugInstall in Vim

call plug#begin('~/.vim/plugged')
Plug 'machakann/vim-swap'
call plug#end()
