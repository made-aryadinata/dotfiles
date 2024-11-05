function bwget --argument field id
  curl -sX GET http://localhost:8087/object/$field/$id | jq -r 'if .success then .data.data else .message end'
end
