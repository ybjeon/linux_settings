set nocompatible
filetype on
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
call vundle#rc()

" let Vundle manage Vundle
"Plugin 'gmarik/Vundle.vim'
"Plugin 'gmarik/vundle'
Plugin 'VundleVim/Vundle.vim'
Plugin 'kelwin/vim-smali'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'klen/python-mode'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'lepture/vim-jinja'
Plugin 'mattn/emmet-vim'
"Bundle 'Glench/Vim-Jinja2-Syntax'


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


" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operatormodes)
" ]]            Jump on next class or function (normal, visual, operatormodes)
" [M            Jump on previous class or method (normal, visual, operatormodes)
" ]M            Jump on next class or method (normal, visual, operatormodes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
