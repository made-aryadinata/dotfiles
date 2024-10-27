function iterm2_print_user_vars
  set -l uptime (uptime)
  iterm2_set_user_var uptime "$uptime"
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
