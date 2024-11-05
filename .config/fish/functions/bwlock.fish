function bwlock
  curl -sX POST http://localhost:8087/lock | jq -r 'if .success then .data.title else .message end'
end
