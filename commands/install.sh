#!/bin/bash

check_folder(){
    if [[ ! -d $HOME/bin ]]; then
        mkdir $HOME/bin
    fi
    if [[ ! -d $HOME/bin/completions ]]; then
            mkdir $HOME/bin/completions
    fi
}
check_folder

run_register_extension_files(){
    local F_PATH=(./*/*.register)
    if [[ $F_PATH[*] ]]; then
      for file in ./*/*.register.sh
      do
        . $file
      done
    fi
}


shopt -s nullglob
shopt -s dotglob

run_register_extension_files

shopt -u nullglob
shopt -u dotglob