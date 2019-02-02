set nocompatible
filetype off
filetype plugin on
filetype indent on
syntax on

" hanguel setting
set encoding=utf-8
"set fileencodings

" powerline setup
set term=xterm-256color
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
"Plugin 'gmarik/Vundle.vim'
"Plugin 'gmarik/vundle'
Plugin 'VundleVim/Vundle.vim'
Plugin 'kelwin/vim-smali'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
"Plugin 'klen/python-mode'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'w0rp/ale'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'lepture/vim-jinja'
Plugin 'mattn/emmet-vim'
"Bundle 'Glench/Vim-Jinja2-Syntax'

call vundle#end()

" keymapping
map <F2> :NERDTreeTabsToggle<CR>
map <F3> :PymodeLint<CR>
map <C-n>1 :tabn 1<CR>
map <C-n>2 :tabn 2<CR>
map <C-n>3 :tabn 3<CR>
map <C-n>4 :tabn 4<CR>
map <C-n>5 :tabn 5<CR>
map <C-n>6 :tabn 6<CR>
map <C-n>7 :tabn 7<CR>
map <C-n><PageUp> :tabp<CR>
map <C-n><PageDown> :tabnext<CR>
set pastetoggle=<F5>
vnoremap // y/<C-R>"<CR>
set nu

" #### emmet-vim ####
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

" ale
let b:ale_linters = ['pyflakes', 'flake8', 'pylint']

" python highlight
let python_highlight_all=1
syntax on
