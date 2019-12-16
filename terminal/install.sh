#!bin/bash

install_files(){
    local CURRENT_DIRECTORY=.
    cp $CURRENT_DIRECTORY/additional.sh $HOME/.bash_additional
    cp $CURRENT_DIRECTORY/aliases.sh $HOME/.bash_aliases
}

install_files
