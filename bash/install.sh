#!/bin/bash

install_files(){
    if [[ $0 == $BASH ]]; then
        echo "You can not execute using this command"
        echo "Quitting"
        return 1
    else
        local CURRENT_FILE="$(realpath $0)"
    fi
    local CURRENT_DIRECTORY="$(dirname $CURRENT_FILE)"
    cp $CURRENT_DIRECTORY/additional.sh $HOME/.bash_additional
    cp $CURRENT_DIRECTORY/aliases.sh $HOME/.bash_aliases
}

install_files
