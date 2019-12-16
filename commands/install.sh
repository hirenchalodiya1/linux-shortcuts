#!bin/bash

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