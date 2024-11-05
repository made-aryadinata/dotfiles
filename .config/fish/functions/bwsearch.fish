function bwsearch --argument keyword
  curl -GsX GET 'http://localhost:8087/list/object/items' --data-urlencode 'search='$keyword | jq -r 'if .success then .data.data|map({name, id}) else .message end'
end
