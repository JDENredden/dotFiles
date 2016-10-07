set background=dark
colorscheme ir_black
syntax on

set nocompatible

" #### General Stuff ####

" Set how mnay lines of history Vim has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Fix the backspace
set backspace=2

" Use the OS keyboard by default
set clipboard=unnamed

" Centralise backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Disable auto comments when pressing ENTER in Inser mode
set formatoptions-=r

" #### Tab settings

" 1 tab == 4 spaces
set tabstop=2   	" number of visual spaces per tab
set softtabstop=2		" number of spaces in tab when editing

" Uses spaces instead of tabs
set expandtab

" Auto indent
set autoindent

" Smart indent
set smartindent

" Stricter rules for C type code
set cindent

" The size of indents
set shiftwidth=2

" Wrap lines
set wrap

" #### UI Things ####

" Enable line numbers
set number

" Always show status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Show cursor position
" set ruler

" Show the filename in the window titlebar
set title

" Show thte (partial) command as it's being typed
set showcmd

" Start scrolling three lines before the horizontal window border
set scrolloff=8

" Highlight current line
set cursorline

" Visual auto complete for command menu
set wildmenu

" Highlighting matching parenthesis
set showmatch
set mat=2 " Blinking matching brackets (in thenths of second)

" #### Code Completion ####

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" #### Status Line ####
set statusline=%F\  
set statusline+=FileType:
set statusline+=%y
set statusline+=%=
set statusline+=\%l:%L:%c

" #### Fortran Stuff ####

let fortran_do_enddo=1
let fortran_more_precise=1
let fortran_have_tabs=1

" vim-plug stuff
call plug#begin()

Plug 'lervag/vimtex'

call plug#end()
