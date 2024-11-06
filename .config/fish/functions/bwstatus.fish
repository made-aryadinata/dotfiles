function bwstatus
  curl -sX GET "http://localhost:8087/status" | jq -r "if .success then .data.template.status else .message end"
end
