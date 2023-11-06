" VIM settings 
set noerrorbells
set nocompatible

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set autoindent 		" Automatically indent
set encoding=utf-8      " Set default encoding to UTF-8
set autoread    " automatically reload changed files

" Search settings
set incsearch		" Incremental search
set ignorecase		" Do case insensitive matching
set smartcase		" unless has mixed case

" Line numbering
set number relativenumber

" Split in more natural way
set splitbelow
set splitright

" Use system clipboard
set clipboard=unnamedplus

" Remap escape key  
inoremap jk <Esc>
inoremap kj <Esc>

" Move to next displayed line (not actual line)
nnoremap j gj
nnoremap k gk

" Restore Y behavior used by vim
nnoremap Y yy

set shiftwidth=4    " four spaces per indent
set tabstop=4       " number of spaces per tab in display
set softtabstop=4   " number of spaces per tab when inserting
set expandtab       " substitute spaces for tabs
set autoindent      " carry indent over to new lines

" Show 80 characters
" set colorcolumn=81

" Automatically set text width for certain filetypes
au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile *.txt setlocal textwidth=80

" Spell check relevant filetypes
autocmd FileType tex set spell spelllang=en_us
autocmd FileType text set spell spelllang=en_us
autocmd FileType markdown set spell spelllang=en_us

" Indentation controls
" Indent by two spaces inside .yaml files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" Indent by four spaces inside html files
autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab
" Indent by four spaces inside javascript files
autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
" Indent by four spaces inside java files
autocmd FileType java setlocal ts=4 sts=4 sw=4 expandtab
" Indent by two spaces inside c files
autocmd FileType c setlocal ts=2 sts=2 sw=2 expandtab


" Plugins
call plug#begin()

" TODO: add linter

" Nice statusline
Plug 'itchyny/lightline.vim'
" let g:lightline = {'colorscheme' : 'Tomorrow_Night_Eighties'}
let g:lightline = {'colorscheme' : 'OldHope'}

" easy tmux/vim aware pane switching
Plug 'christoomey/vim-tmux-navigator'
" Potential alternate version
" Plug 'alexghergh/nvim-tmux-navigation'

Plug 'preservim/nerdcommenter'
filetype plugin on
let g:NERDSpaceDelims = 1
nmap <C-_> <leader>c<space>
vmap <C-_> <leader>c<space>

" Color themes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'AlessandroYorba/Alduin'  "brownish dark colorscheme
let g:alduin_Shout_Aspect = 1

call plug#end()

" Default colorscheme
colorscheme palenight

