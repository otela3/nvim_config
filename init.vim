syntax on

set mouse=a
set noerrorbells
set sw=2
set number
set expandtab
set smartindent
set rnu
set numberwidth=1
set nowrap
set nobackup
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set cursorline
set termguicolors
set guifont=Source\ Code\ Pro\ for\ Powerline:h15:cANSI

set colorcolumn=120
highlight ColoColumn ctermbg=0 guibg=lightgrey

call plug#begin('C:\Users\matii\AppData\Local\nvim\plugged')

"themes
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'
Plug 'abra/vim-obsidian'

"visual
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'
Plug 'leafgarland/typescript-vim'

"Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

"Functionality
Plug 'scrooloose/nerdtree'
Plug 'vim-python/python-syntax'
Plug 'neoclide/coc.vim', {'branch': 'relese'}

call plug#end()

"Theme
let g:python_highlight_all = 1
set termguicolors
set background=dark
let ayucolor="dark"
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox

"airline
let g:airline_powerline_fonts = 1

"kite
let g:kite_supported_languages = ['javascript', 'python']

"coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

"Use <c-space> to trigger completion
if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif
