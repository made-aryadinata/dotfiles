function expand_dot_to_parent_directory_path --description 'expand ... to ../.. etc'
    # Get commandline up to cursor
    set -l cmd (commandline --cut-at-cursor)

    # Match last line
    switch $cmd[-1]
        case '*../'
            commandline --insert '../'
        case '*.'
            commandline --insert './'
        case '*'
            commandline --insert '.'
    end
end
