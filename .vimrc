set number
syntax on
set noshowmode
set backspace=indent,eol,start
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

call plug#begin()

Plug 'ghifarit53/tokyonight-vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

let mapleader=" "

nnoremap <leader>f :Files<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

if has('persistent_undo')
  set undofile
  set undodir=$HOME/.vim/undo
endif

set termguicolors

let g:tokyonight_enable_italic = 1

colorscheme tokyonight
