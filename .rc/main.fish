set rc_dir (dirname (status --current-filename))

source $rc_dir/git.fish
source $rc_dir/ide.fish
source $rc_dir/nodejs.fish
source $rc_dir/profile.fish
source $rc_dir/ssh.fish
source $rc_dir/themes.fish

if test -e $rc_dir/work/work.fish
  source $rc_dir/work/work.fish
end

set -e rc_dir
