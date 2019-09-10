call plug#begin('~/.vim/plugged')

" Run :PlugInstall to load plugins
Plug 'ElmCast/elm-vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'ctrlpvim/ctrlp.vim'
" Color schemes
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'tjammer/blayu.vim'
Plug 'romainl/Apprentice'
Plug 'jnurmine/Zenburn'
Plug 'arcticicestudio/nord-vim'
" Initialize plugin system
call plug#end()

set tabstop=2 shiftwidth=2 expandtab
set number
set rulerformat=%v
set ruler
set backupcopy=yes
set noswapfile

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Show lightline.vim bar
set laststatus=2

let g:lightline = {
    \ 'colorscheme': 'nord',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'filename', 'gitbranch', 'modified', ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'filetype', ] ]
    \ },
    \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
    \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
    \ 'component': {
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name'
    \ },
    \ }
set noshowmode
syntax on
" colorscheme onedark
colorscheme nord
