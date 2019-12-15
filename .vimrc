colorscheme nord
set number
set rnu
set laststatus=2
syntax on
set noshowmode
set clipboard=unnamedplus

let g:clipboard = {
  \   'copy': {
  \      '+': 'xsel -b -i',
  \      '*': 'xsel -p -i',
  \    },
  \   'paste': {
  \      '+': 'xsel -b -o',
  \      '*': 'xsel -p -o',
  \   },
  \   'cache_enabled': 1,
  \ }

nnoremap tn	:tabnew<space>
nnoremap tk	:tabnext<CR>
nnoremap tj	:tabprev<CR>
nnoremap th	:tabfirst<CR>
nnoremap tl	:tablast<CR>

autocmd FileType json syntax match Comment +\/\/.\+$+


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'https://github.com/lambdalisue/suda.vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()	

let g:lightline = {
  \ 	'colorscheme': 'nord',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

map <C-o> :NERDTreeToggle<CR>


