function fish_title
    # emacs is basically the only term that can't handle it.
    if not set -q INSIDE_EMACS
        echo (status current-command) in (basename (__fish_pwd))
    end
end

type -q starship && starship init fish | source

function bwlogin
  if test -z $BW_SESSION
    set -gx BW_SESSION (bw unlock --raw)
  end
end

function bwrelogin
  set -e BW_SESSION
  bwlogin
end

function mkcd -a dir
  mkdir $dir
  cd $dir
end

alias l="ls -lah"

if test (uname -s) = "Darwin"
  set -gx JAVA_HOME (/usr/libexec/java_home)
end

function expand-dot-to-parent-directory-path -d 'expand ... to ../. and .... to ../.. and so on'
    # Get commandline up to cursor
    set -l cmd (commandline --cut-at-cursor)

    # Match last line
    switch $cmd[-1]
        case '*..'
            commandline --insert '/..'
        case '*'
            commandline --insert '.'
    end
end

function my_key_bindings
    fish_default_key_bindings
    bind . 'expand-dot-to-parent-directory-path'
end

set -g fish_key_bindings my_key_bindings
