if type -q pnpm
  set -gx PNPM_HOME (dirname (which pnpm))
  if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
  end
end

set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

if test -e ~/.npmrc
  set -gx NPM_REGISTRY (cat ~/.npmrc | grep '^registry' | sed -e 's/registry=//' | sed 's/.$//')
  set -gx NPM_TOKEN (grep '_authToken' ~/.npmrc | head -1 | sed -e 's/.*_authToken\=//')

  if test (uname -s) = "Darwin"
    set -gx NPMRC (base64 -i ~/.npmrc)
  else if test (uname -s) = "Linux"
    set -gx NPMRC (base64 -w 0 ~/.npmrc)
  end
end

if type -q fnm
  fnm env | source
end

abbr --add nt "npm run test"
abbr --add ntc "npm run test:coverage"
abbr --add ntd "npm run test:debug"
abbr --add ni "npm install"
abbr --add nil "npm install --legacy-peer-deps"
abbr --add nilis "npm install --legacy-peer-deps --ignore-scripts"
abbr --add nci "npm ci"
abbr --add ncil "npm ci --legacy-peer-deps"
