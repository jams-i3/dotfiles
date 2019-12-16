colorscheme nord
set number
set rnu
set laststatus=2
syntax on
syntax enable
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
Plug 'https://github.com/lambdalisue/suda.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'Yggdroot/indentLine'
Plug 'w0rp/ale'

call plug#end()	

let g:lightline = {
  \ 	'colorscheme': 'nord',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

map <C-o> :NERDTreeToggle<CR>

" Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}
