function cssh --argument name
  set rc_dir ~/.config/cssh
  set ssh_json $rc_dir/ssh.json
  set key (jq -r --arg name $name ".$name.key" $ssh_json)

  __cssh_check_name $name $key $ssh_json
  [ $status -eq 1 ] && return 1

  set user (jq -r --arg name $name ".$name.user" $ssh_json)
  set ip (jq -r --arg name $name ".$name.ip" $ssh_json)
  set port (jq -r --arg name $name ".$name.port" $ssh_json)

  echo using $key for $user@$ip:$port
  ssh -o PubkeyAcceptedKeyTypes=+ssh-rsa -o HostkeyAlgorithms=+ssh-rsa -p $port -i $key $user@$ip
end
