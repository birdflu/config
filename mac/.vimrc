:syntax on
set tabstop=2
set history=200
set shiftwidth=2
set expandtab
set re=0
set number
set nocompatible
set incsearch
set foldcolumn=1
set hls

" RU
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

nmap Ж :
" yank
nmap Н Y
nmap з p
nmap ф a
nmap щ o
nmap г u
nmap З P
nmap м v
nmap Э "
nmap н y
nmap ш i
nmap * *
nmap а f
" add rainbow colors
" autocmd Filetype * if index(['javascript', 'python', 'typescript', 'scm', 'php', 'xml', 'yaml'], &ft) | call rainbow_levels#on() | else | call rainbow_levels#off() | endif
" autocmd filetype lisp,scheme call rainbow_levels#on()
        
" add map for λ-symbol
inoremap <C-\> <C-v>u03bb

inoremap <Tab> <C-n>
inoremap <C-n> <Tab>
" vim-plug section
"
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" and then exec :PlugInstall in Vim

call plug#begin('~/.vim/plugged')

Plug 'machakann/vim-swap'
Plug 'tsandall/vim-rego'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'sainnhe/gruvbox-material'
" scheme for vim-polyglot see in .vim/plugged/vim-polyglot/syntax/
Plug 'sheerun/vim-polyglot'      
Plug 'luochen1990/rainbow'
Plug 'dpelle/vim-LanguageTool'
"Plug 'neoclide/coc.nvim'

call plug#end()

         " Important!!
if has('termguicolors')
  set termguicolors
endif

        " For dark version.
set background=dark

        " For light version.
        " set background=light

        " Set contrast.
        " This configuration option should be placed before `colorscheme gruvbox-material`.
 
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 0
let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols ='unicode' "Поддержка unicode
let g:gruvbox_material_cursor = 'green'
let g:gruvbox_material_visual = 'green background' "'reverse'
let g:gruvbox_material_current_word = 'bold'

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

colorscheme gruvbox-material
let g:airline_theme = 'gruvbox_material'

let g:formatdef_rego = '"opa fmt"'
let g:formatters_rego = ['rego']
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:yats_host_keyword = 1
" let g:autoformat_verbosemode = 1

let g:rainbow_active = 0

" Selected parenthesis color
 " highlight MatchParen cterm=bold ctermfg=cyan ctermbg=blue guibg=lightblue
highlight MatchParen ctermbg=gray

" https://github.com/luochen1990/rainbow
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'guis': [''],
\	'cterms': [''],
\	'operators': '_,_',
\	'contains_prefix': 'TOP',
\	'parentheses_options': '',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'markdown': {
\			'parentheses_options': 'containedin=markdownCode contained',
\		},
\		'scheme': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'lisp': {
\			'guifgs': ['lightblue', 'lightblue', 'lightblue', 'lightblue', 'lightblue'],
\		},
\		'haskell': {
\			'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\v\{\ze[^-]/ end=/}/ fold'],
\		},
\		'ocaml': {
\			'parentheses': ['start=/(\ze[^*]/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\[|/ end=/|\]/ fold', 'start=/{/ end=/}/ fold'],
\		},
\		'tex': {
\			'parentheses_options': 'containedin=texDocZone',
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'vim': {
\			'parentheses_options': 'containedin=vimFuncBody,vimExecute',
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold'],
\		},
\		'xml': {
\			'syn_name_prefix': 'xmlRainbow',
\			'parentheses': ['start=/\v\<\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'))?)*\>/ end=#</\z1># fold'],
\		},
\		'xhtml': {
\			'parentheses': ['start=/\v\<\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'))?)*\>/ end=#</\z1># fold'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((script|style|area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'lua': {
\			'parentheses': ["start=/(/ end=/)/", "start=/{/ end=/}/", "start=/\\v\\[\\ze($|[^[])/ end=/\\]/"],
\		},
\		'perl': {
\			'syn_name_prefix': 'perlBlockFoldRainbow',
\		},
\		'php': {
\			'syn_name_prefix': 'phpBlockRainbow',
\			'contains_prefix': '',
\			'parentheses': ['start=/(/ end=/)/ containedin=@htmlPreproc contains=@phpClTop', 'start=/\[/ end=/\]/ containedin=@htmlPreproc contains=@phpClTop', 'start=/{/ end=/}/ containedin=@htmlPreproc contains=@phpClTop', 'start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold contains_prefix=TOP'],
\		},
\		'stylus': {
\			'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'],
\		},
\		'css': 0,
\		'sh': 0,
\		'vimwiki': 0,
\	}
\}

:let g:languagetool_jar='$HOME/work/LanguageTool-5.2/languagetool-commandline.jar'

au BufWritePre *.rego Autoformat

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}
