filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" cobalt2 color scheme
Plugin 'GlennLeo/cobalt2'
" lightline
Plugin 'itchyny/lightline.vim'
" nerdtree
Plugin 'preservim/nerdtree'

call vundle#end() " required
filetype plugin indent on " required

set nocompatible

" enable 24bit true color
set termguicolors

" enable
syntax enable
colorscheme cobalt2

let g:rigel_lightline = 1
let g:lightline = { 'colorscheme': 'rigel' }

set encoding=utf-8
set fileencodings=utf-8,cp949
lan mes en_us

if has("gui_running")
	set guifont=Consolas:h10:cANSI
	set guifontwide=DotumChe:h9:cDEFAULT

	" disable toolbar
	set guioptions-=T
	" disable menubar
	set guioptions-=m
	" system menu is not sourced.
	set guioptions+=M
	" right-hand scrollbar
	set guioptions+=r
	" left-hand scrollbar
	set guioptions+=l
endif

set title
set backspace=2
set ruler
set number
set numberwidth=8
set wrap
set linebreak
set nobackup
set visualbell
set cursorline

hi CursorIM guibg=Purple guifg=Black

set showcmd
set showmatch

set shiftwidth=2
set tabstop=2

set autoindent
set cindent


" change initial working directory.
set autochdir

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree | wincmd p
