
set background=light
set nocompatible
set encoding=utf-8
set nowrap
filetype off
syntax on

" mappings
" set the leader to space
let mapleader = " "
" toggle nerdtree via ctrl-n
map <C-n> :NERDTreeToggle<CR>
" toggle tagbar via ctrl-m
map <C-m> :TagbarToggle<CR>

" make backspace work like most other programs
set backspace=2

set guicursor+=n-v-c:blinkon0

"""""""""""""""""""""""""""""""""""""
" Configuration Section

"enable copying to clipboard
set clipboard=unnamed

" show line numbers, show position, use mouse to scroll 
set number
set ruler
set mouse=a

" font
set antialias
set guifont=Inconsolata-dz-Powerline:h13


" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'vim-syntastic/syntastic'

"ultisnips
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

call vundle#end()

" Colors
set background=light
colorscheme solarized
" YCM settings
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"ultisnips settings
" Trigger configuration.
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" vim-airline configuration
let g:airline_powerline_fonts = 1 
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 

" Syntastic Configuration
let b:syntastic_mode = 'active'
let g:syntastic_check_on_open = 1
let g:syntastic_python_checkers = ['pyflakes']

"disable all style warnings in syntastic
"let g:syntastic_quiet_messages = { "type": "style" }

let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
