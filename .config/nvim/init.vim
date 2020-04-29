source ~/.config/nvim/plug.vim

if exists('g:vscode')
  source ~/.config/nvim/nerdcommenter.vim
else
  source ~/.config/nvim/ack.vim
  source ~/.config/nvim/js.vim
  source ~/.config/nvim/editor.vim
  source ~/.config/nvim/nerdtree.vim
  source ~/.config/nvim/nerdcommenter.vim
  source ~/.config/nvim/coc.vim
  source ~/.config/nvim/gitgutter.vim
  source ~/.config/nvim/lightline.vim
endif
