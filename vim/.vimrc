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
Plug 'tsandall/vim-rego'

call plug#end()

let g:formatdef_rego = '"opa fmt"'
let g:formatters_rego = ['rego']
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
" let g:autoformat_verbosemode = 1
au BufWritePre *.rego Autoformat

