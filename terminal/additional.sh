#!bin/bash
# source all files of $HOME/bin/completion folder for completion purpose

add_additional_files_to_auto_complete()
{
  if [[ -d $HOME/bin ]]; then
    local FILES=($HOME/bin/completions/*.bash)
    if [[ $FILES[*] ]]; then
      for file in $HOME/bin/completions/*.bash
      do
        . $file
      done
    fi
  fi
}

shopt -s nullglob
shopt -s dotglob

add_additional_files_to_auto_complete

shopt -u nullglob
shopt -u dotglob