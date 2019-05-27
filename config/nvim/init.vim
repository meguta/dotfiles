call plug#begin('~/.vim/plugged')

" ---------------- PLUGINS ----------------
"  Utilites
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'

" Autocomplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-clang'

" Syntax Check
Plug 'scrooloose/syntastic'

" Themes
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Initialize plugin system
call plug#end()

"Basic Vim Config
set encoding=utf8
set number
set smartcase
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set noswapfile
set nowrap

let mapleader = ","
let g:mapleader = ","

filetype indent on

"Vim Theme Config
syntax enable
colorscheme nord

"Mappings for NERDTree
map <C-z> :NERDTreeToggle<CR>

"Buffer movement Config
nmap <F4> :bn<CR>

"Deoplete Config
let g:deoplete#enable_at_startup = 1 
let g:deoplete#sources#clang#libclang_path = '/usr/local/Cellar/llvm/6.0.1/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header = '/usr/local/Cellar/llvm/6.0.1/lib/clang'

"Mappings for Deoplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:UltiSnipsExpandTrigger="<C-q>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Tab autocomplete
set completeopt-=preview

"IndentLine
let g:indentLine_enabled = 0
let g:indentLine_char = "|"

"+--- itchyny/lightline.vim ---+
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [
      \     [ 'mode', 'paste' ],
      \     [ 'fugitive', 'filename' ]
      \   ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \   'filename': 'LightlineFilename'
      \ },
      \ 'separator': {
      \   'left': '',
      \   'right': ''
      \ },
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
    \ }

function! LightlineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightlineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! LightlineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction




