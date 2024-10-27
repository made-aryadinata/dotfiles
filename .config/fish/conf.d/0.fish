if test (uname -s) = "Darwin"
  eval (/opt/homebrew/bin/brew shellenv)
else if test (uname -s) = "Linux"
  eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
end

if type -q zoxide
  zoxide init fish | source
end

fish_config theme choose custom
