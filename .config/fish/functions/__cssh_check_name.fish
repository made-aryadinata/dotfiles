function __cssh_check_name --argument name key ssh_json
  if test "$key" = "null"
    echo "\"$name\" not found in configuration. Available names:"
    jq -r 'keys[]' $ssh_json
    return 1
  end
end
