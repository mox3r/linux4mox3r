set number
set relativenumber

set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

set encoding=utf-8

syntax on



call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'kaicataldo/material.vim', {'branch': 'main'}
Plug 'vim-airline/vim-airline'
call plug#end()

let g:material_theme_style = 'darker'


let g:airline#extensions#enabled = 1

if(has('termguicolors'))
	set termguicolors
endif



colorscheme material
