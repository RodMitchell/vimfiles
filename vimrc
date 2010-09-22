set nocompatible 

source $VIMRUNTIME/mswin.vim		" behave as in windows

set nu			" line numbers on

set mousehide		" Hide the mouse when typing text

if !exists("syntax_on")	" Syntax on
 syntax on
endif

set hlsearch		" Switch on search pattern highlighting

set ch=2		" Set command height to 2

set shm=I		" don't show message

:set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

set mps+=<:>		" set match pairs to <> as for HTML,XML use $

let mapleader=","	" change the mapleader from \ to ,

if has("autocmd")	" Source the vimrc file after saving it
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

nmap <leader>v :tabedit $MYVIMRC<CR>

set browsedir="C:\work"

"nnoremap <silent> <buffer> <F5> :!start cmd /c "%<.exe" && pause<CR>
"nnoremap <silent> <F5> :!start cmd /c "%:p:r:s,$,.exe," & pause<CR>

"nmap <silent> <leader>ev :e $MYVIMRC<CR> 	"edit _vimrc
"nmap <silent> <leader>sv :so $MYVIMRC<CR>	"reload+ _vimrc

