function fish_title
    # emacs is basically the only term that can't handle it.
    if not set -q INSIDE_EMACS
        if test -z "$argv[1]"
            echo (prompt_pwd)
        else
            echo $argv[1] in (prompt_pwd)
        end
    end
end
