function bwunlock
  set -l response_status (curl -sX GET "http://localhost:8087/status" | jq -r ".data.template.status")

  if test "$response_status" = "locked"
    read -sl BW_PASSWORD --prompt "echo 'Enter Bitwarden password: '"
    curl -sX POST http://localhost:8087/unlock -H "content-type: application/json" -d '{"password":"'$BW_PASSWORD'"}' | jq -r 'if .success then .data.title else .message end'
  else if test "$response_status" = "unlocked"
    echo "Vault is already unlocked."
  else
    echo "Unknown vault status: "$response_status
  end
end
