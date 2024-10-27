function cscp --argument command name source destination
  if test -z $command || test -z $name || test -z $source || test -z $destination
    echo "Usage: $_ from/to SSH_NAME SOURCE DESTINATION"
    return 1
  end

  set rc_dir ~/.config/cssh
  set ssh_json $rc_dir/ssh.json
  set key (jq -r --arg name $name ".$name.key" $ssh_json)

  __cssh_check_name $name $key $ssh_json
  test $status -eq 1 && return 1

  set user (jq -r --arg name $name ".$name.user" $ssh_json)
  set ip (jq -r --arg name $name ".$name.ip" $ssh_json)
  set port (jq -r --arg name $name ".$name.port" $ssh_json)

  if test "$command" = "from"
    set source $user@$ip:$source
  else if test "$command" = "to"
    set destination $user@$ip:$destination
  else
    echo "First parameter should be from or to"
    return 1
  end

  /usr/bin/scp -P $port -i $key $source $destination
end
