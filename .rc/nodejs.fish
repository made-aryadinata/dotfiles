if test -e ~/.npmrc
  set -gx NPM_REGISTRY (cat ~/.npmrc | grep '^registry' | sed -e 's/registry=//' | sed 's/.$//')
  set -gx NPM_TOKEN (grep '_authToken' ~/.npmrc | head -1 | sed -e 's/.*_authToken\=//')

  if test (uname -s) = "Darwin"
    set -gx NPMRC (base64 ~/.npmrc)
  else if test (uname -s) = "Linux"
    set -gx NPMRC (base64 -w 0 ~/.npmrc)
  end
end

alias nt="npm run test"
alias ntc="npm run test:coverage"


if type -q fnm
  fnm env | source
end
