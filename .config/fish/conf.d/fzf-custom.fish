fzf --fish | source
set -gx FZF_DEFAULT_COMMAND fd --hidden --strip-cwd-prefix --exclude .git
set -gx FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND