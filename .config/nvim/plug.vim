call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'               " Navigate between tmux and vim 
Plug 'itchyny/vim-gitbranch'                        " Show git branch in lightline
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy file finder
Plug 'junegunn/goyo.vim'                            " Distraction-free writing in Vim
Plug 'junegunn/gv.vim'                              " A git commit browser in Vim
Plug 'mileszs/ack.vim'                              " Vim plugin for the Perl module / CLI script 'ack'
Plug 'preservim/nerdcommenter'                      " Shortcut to comment/uncomment code
Plug 'preservim/nerdtree'                           " File tree
Plug 'ryanoasis/vim-devicons'                       " Icons in NERDTree
Plug 'tpope/vim-fugitive'                           " git commands in vim
Plug 'tpope/vim-sensible'                           " Sensible defaults
Plug 'Xuyuanp/nerdtree-git-plugin'                  " Show modified files in NERDTree

" language support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'leafgarland/typescript-vim'
Plug 'stephpy/vim-yaml'
Plug 'udalov/kotlin-vim'

" javascript development
Plug 'eliba2/vim-node-inspect'
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'mxw/vim-jsx'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'tomtom/tlib_vim'
Plug 'w0rp/ale'

" themes
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
call plug#end()
