" Sets how many lines of history VIM has to remember
set history=700

" No annoying sound on errors
set noerrorbells
set novisualbell
"set t_vb=
"set tm=500

" Enable syntax highlighting
syntax enable

" dark background
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
	set guioptions+=e
	set t_Co=256
	set guitablabel=%M\ %t
end

if (&t_Co == 256)
	colorscheme hybrid
else
	colorscheme default
endif

" no tabs
"set expandtab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set autoindent

set nowrap "Do NOT Wrap lines

set number

set scrolloff=5 "Show next 5 lines at bottom of display

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l



""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Add Syntax for Markdown
au BufRead,BufNewFile *.md set filetype=markdown

