#!/bin/bash


install_command(){
    local CURRENT_DIRECTORY=./proxy
    install $CURRENT_DIRECTORY/command.sh $HOME/bin/proxy
    install $CURRENT_DIRECTORY/completion.sh $HOME/bin/completions/proxy.bash
}
install_command