set tabstop=2
set softtabstop=2
set expandtab
set number
set cursorline
filetype plugin on

" color configuration
if (has("termguicolors"))
  set termguicolors
endif

colorscheme nord

" Enable the mouse. Also enable when in tmux.
set mouse=a

" Use the system clipboard.
set clipboard=unnamed
