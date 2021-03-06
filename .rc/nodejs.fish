if test -e ~/.npmrc
  set NPM_REGISTRY (cat ~/.npmrc | grep '^registry' | sed -e 's/registry=//' | sed 's/.$//')
  set NPM_TOKEN (cat ~/.npmrc | grep '_authToken' | sed -e 's/.*_authToken\=//')
  set NPMRC (base64 ~/.npmrc)
end

alias nt="npm run test"
alias ntc="npm run test:coverage"


if type -q fnm
  eval (fnm env --multi)
end
