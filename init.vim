set nocompatible
filetype off
set mouse=a
set number
syntax on
filetype plugin indent on 
set tw=80
set nowrap
set smartcase
set completeopt=menuone,menu,longest

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

set t_Co=256

set cmdheight=1
" Plugins
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'itchyny/vim-haskell-indent'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate.git'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/deoplete.nvim'
Plugin 'Shougo/vimproc.vim'
Plugin 'mhinz/vim-startify'
Plugin 'vim-airline/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'Twinside/vim-hoogle'
Plugin 'alx741/vim-hindent'
call vundle#end()

" Startify
let g:startify_bookmarks = [
    \ { 'c': '~/.config/nvim/init.vim' },
    \ ]
let g:startify_custom_header = ['   works on my machine :^]']
let g:startify_custom_footer = [' ', '   get a real editor sometime']

" Tree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '|'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Airline
let g:airline_symbols = {}
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = '' " powerline symbols
let g:airline_skip_empty_sections = 1
  " Haskell tab settings
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround
" Haskell Plugins
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>

let g:deoplete#enable_at_startup = 1
let g:necoghc_enable_detailed_browse = 1
let g:necoghc_use_stack = 1
let g:haskellmode_completion_ghc = 1
" autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

let g:haskell_tabular = 1
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

map <C-P> :CtrlP /home/vkvd/Development/

let g:ctrlp_working_path_mode = 'ra'

let g:hindent_on_save = 1
let g:hindent_line_length = 80
let g:hindent_indent_size = 4

" Movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

colorscheme nord
