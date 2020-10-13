if not type -q code
  function code
    if test (uname -s) = "Darwin"
      /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code $argv
    else
      echo "Visual Studio Code not found"
    end
  end
end

if not type -q idea
  if test (uname -s) = "Darwin"
    alias idea='open -na "IntelliJ IDEA CE" --args "$PWD/$argv"'
  end
end
