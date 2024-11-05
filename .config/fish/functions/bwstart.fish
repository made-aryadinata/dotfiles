function bwstart
  if not bw login --check
    bw login
  end

  if not pgrep -f "bw serve" > /dev/null
    nohup bw serve > /dev/null 2>&1 &; disown
  end

  while true
    set -l response (curl -s --connect-timeout 1 "localhost:8087" 2>/dev/null)
    if test "$response" = "Not Found"
      break
    end
    sleep 1
  end

  curl -sX POST http://localhost:8087/sync | jq -r 'if .success then .data.title else .message end'

  set -l response_status (curl -sX GET "http://localhost:8087/status" | jq -r ".data.template.status")
  if test "$response_status" = "locked"
    bwunlock
  end
end
