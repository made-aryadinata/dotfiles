function expand_url
  set strip_query 0
  set url ""

  # Loop through arguments to find the URL and check for --strip-query
  for arg in $argv
    if test $arg = "--strip-query"
      set strip_query 1
    else
      set url $arg
    end
  end

  # Step 1: Try to expand the URL with curl
  set expanded_url (curl -Ls -o /dev/null -w "%{url_effective}" $url)

  # Step 2: If the expanded URL is the same as the original, use unshorten.me
  if test "$expanded_url" = "$url"
    set expanded_url (curl -s "https://unshorten.me/s/$url")
  end

  # Step 3: Optionally strip query parameters if --strip-query is set
  if test $strip_query -eq 1
    set expanded_url (string split '?' $expanded_url)[1]
  end

  # Output the final expanded URL
  echo $expanded_url
end
