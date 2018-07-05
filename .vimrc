" * User Interface
" regular settings
set laststatus=2        " always show filename/status bar
" set lazyredraw          " don't redraw while doing macros, etc.
set scrolloff=3         " always show 3 lines above or below cursor
set title               " change title of xterm window
" set wrap
set ruler
set incsearch
set autoindent
set hlsearch


" have syntax highlighting in terminals which can display colours:
if has('syntax') && (&t_Co > 2)
  syntax on
endif

" * Terminal Settings
colorscheme elflord
"colorscheme darkblue
"colorscheme torte
"syntax on
set bg=dark

map <F2> :cn<cr>
map <F3> :cp<cr>
map <F4> :cl<cr>
map <F5> :!p4 edit %<CR>
map <F7> :A<cr>
nmap <F8> :!find . -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.hpp' -o -name '*.hpp' > cscope.files<CR>:!cscope -b -i cscope.files -f cscope.out<CR>:cs reset<CR>
map <F9> :set makeprg=gmake<cr>:make all<cr>
"map <F10> :set makeprg=make\ run<cr>:w<cr>:make<cr>
map <F10> :TlistToggle<CR>
map <F11> :TlistHighlightTag<CR>
map <F12> :w<cr>



let g:C_FormatDate            = '%Y/%m/%d'
filetype plugin on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"syntax on

set diffopt+=iwhite

inoremap {<CR> {<CR>}<C-o>O
