call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy file finder
Plug 'itchyny/vim-gitbranch'                        " Show git branch in lightline
Plug 'junegunn/gv.vim'                              " A git commit browser in Vim
Plug 'preservim/nerdcommenter'                      " Shortcut to comment/uncomment code
Plug 'preservim/nerdtree'                           " File tree
Plug 'ryanoasis/vim-devicons'                       " Icons in NERDTree
Plug 'tpope/vim-fugitive'                           " git commands in vim
Plug 'tpope/vim-sensible'                           " Sensible defaults
Plug 'Xuyuanp/nerdtree-git-plugin'                  " Show modified files in NERDTree
Plug 'christoomey/vim-tmux-navigator'               " Navigate between tmux and vim 

" language support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'leafgarland/typescript-vim'
Plug 'udalov/kotlin-vim'

" javascript development
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'mxw/vim-jsx'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'tomtom/tlib_vim'
Plug 'w0rp/ale'
Plug 'eliba2/vim-node-inspect'

" themes
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
call plug#end()
