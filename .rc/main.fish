set rc_dir (dirname (status --current-filename))

function iterm2_print_user_vars
  set -l uptime (uptime)
  iterm2_set_user_var uptime "$uptime"
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

source $rc_dir/docker.fish
source $rc_dir/git.fish
source $rc_dir/ide.fish
source $rc_dir/nodejs.fish
source $rc_dir/profile.fish
source $rc_dir/ssh.fish
source $rc_dir/themes.fish
source $rc_dir/nnn.fish

if test -e $rc_dir/work/work.fish
  source $rc_dir/work/work.fish
end

set -e rc_dir

