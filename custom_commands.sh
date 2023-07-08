#!/bin/bash

### Importing custom commands specified in the file.
# source "$PWD/aliases.sh"
# . "$PWD/aliases.sh"

## or,

#### Custom commands
export lah=$(echo -e "ls -lah")
export eixt=$(echo -e 'exit')



###############################################################################################@#######

### Main script logic
# if [[ "$PWD" == "/path/to/specific/directory" ]]; then

    if [ -n "$1" ]; then             # $1 is the 1st argument passed to this script. eg., `./commands.sh lah`
        command=$(eval "echo \$$1")

        if [ -n "$command" ]; then
            eval "$command"          # Finally, eval is used to evaluate and execute the command stored in the command variable
        else
            echo "Custom command not found: $1"
        fi
    else
        echo "Command not provided as argument in the script."
    fi

# else
#   echo "Command not allowed in this directory path: $PWD"
# fi

