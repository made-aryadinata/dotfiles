function bwlogin
  if test -z $BW_SESSION
    set -Ux BW_SESSION (bw unlock --raw)
  end
end
