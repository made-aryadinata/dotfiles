function __check_name -a name key ssh_json
  if test "$key" = "null"
    echo "\"$name\" not found in configuration. Available names:"
    jq -r 'keys[]' $ssh_json
    return 1
  end
end

function cssh -a name
  set rc_dir (dirname (status --current-filename))
  set ssh_json $rc_dir/ssh.json
  set key (jq -r --arg name $name ".$name.key" $ssh_json)

  __check_name $name $key $ssh_json
  [ $status -eq 1 ] && return 1

  set user (jq -r --arg name $name ".$name.user" $ssh_json)
  set ip (jq -r --arg name $name ".$name.ip" $ssh_json)
  set port (jq -r --arg name $name ".$name.port" $ssh_json)

  echo using $key for $user@$ip:$port
  ssh -o PubkeyAcceptedKeyTypes=+ssh-rsa -o HostkeyAlgorithms=+ssh-rsa -p $port -i $key $user@$ip
end

function cscp -a command name source destination
  if test -z $command || test -z $name || test -z $source || test -z $destination
    echo "Usage: $_ from/to SSH_NAME SOURCE DESTINATION"
    return 1
  end

  set rc_dir (dirname (status --current-filename))
  set ssh_json $rc_dir/ssh.json
  set key (jq -r --arg name $name ".$name.key" $ssh_json)

  __check_name $name $key $ssh_json
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
