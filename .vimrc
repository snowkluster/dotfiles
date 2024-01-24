syntax on 
filetype on
filetype plugin on
filetype indent on

set modelines=0
set nobackup
set nowb
set noswapfile
set showmode
set number
set showcmd
set ai 
set si
set laststatus=2
set ignorecase
set smartcase
set incsearch
set wildmenu
set wildmode=list:full
set hlsearch
set noerrorbells
set novisualbell
set smarttab
set shiftwidth=4
set tabstop=4

" Working fix for cursor change between insert and normal mode
set ttimeout
set ttimeoutlen=1
set ttyfast
" change cursor between insert and normal mode 
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Returns true if paste mode is enabled
function! HasPaste()
  if &paste
    return 'PASTE MODE '
  endif
  return ''
endfunction

