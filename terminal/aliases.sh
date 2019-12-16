# enable bash_addtional file
if [[ -f $HOME/.bash_additional ]]; then
    . $HOME/.bash_additional
fi

# different aliases
alias project="cd $HOME/Project"