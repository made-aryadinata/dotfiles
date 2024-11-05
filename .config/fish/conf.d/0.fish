if test (uname -s) = "Darwin"
  eval (/opt/homebrew/bin/brew shellenv)
else if test (uname -s) = "Linux"
  eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
end

fish_config theme choose custom

type -q zoxide && zoxide init fish | source
type -q starship && starship init fish | source

set -g fish_key_bindings my_key_bindings
abbr -a !! --position anywhere --function last_history_item
abbr -a eusq "expand_url --strip-query"
