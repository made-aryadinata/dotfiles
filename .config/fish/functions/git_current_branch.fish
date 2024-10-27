function git_current_branch
	set -l ref (command git symbolic-ref --quiet HEAD 2> /dev/null)
	set -l ret $status
	if test $ret != 0
		test $ret = 128 && return
		set -l ref (command git rev-parse --short HEAD 2> /dev/null)  || return
	end
	echo (string replace -r "^refs/heads/" "" -- $ref)
end
