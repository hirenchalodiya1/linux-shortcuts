#!bin/bash

check_folder(){
    if [[ ! -d $HOME/bin ]]; then
        mkdir $HOME/bin
    fi
    if [[ ! -d $HOME/bin/completions ]]; then
            mkdir $HOME/bin/completions
    fi
}
check_folder

install_command(){
    local CURRENT_DIRECTORY=./proxy
    install $CURRENT_DIRECTORY/command.sh $HOME/bin/proxy
    install $CURRENT_DIRECTORY/completion.sh $HOME/bin/completions/proxy.bash
}
install_command