function bwstop
  kill -9 (pgrep -f "bw serve")
end
