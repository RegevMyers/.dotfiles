function __fix_dotfile_names {
  cd $HOME
  
  find .dotfiles -path '.dotfiles/.git/*' -prune -o -type f -print | while read -r __file; do
    __new_name="$(echo $__file | sed -E 's|/\.([^/]*)|/dot-\1|g')"
    mv "$__file" "$__new_name"
  done
  
  cd - &>/dev/null
}

function dotfiles {
  cd $HOME

  case "$1" in
    show)
      tree --noreport -a -I .git .dotfiles
      ;;

    add)
      __pkg="$2"
      __file="$3"
      __dir=${__file%/*}
      
      if [ $__dir == $__file ]; then
        __dir=""
      fi

      echo -e "CREATING .dotfiles/$__pkg/$__dir"
      mkdir -p ".dotfiles/$__pkg/$__dir"

      echo -e "MOVING   $__file  ->  .dotfiles/$__pkg/$__dir"
      mv "$__file" ".dotfiles/$__pkg/$__dir"

      unset __pkg
      unset __file
      unset __dir
      ;;
      
    sync)
      cd .dotfiles
      
      git add -A
      git commit -a -m "Sync: $(date)" 
      git pull --rebase origin main 
      git push origin main

      cd - &> /dev/null
      ;;

    *)
      __usage="Usage: dotfiles command\n\n\tshow\n\tadd <pkg> <file>\n\tsync"
      echo -e "$__usage"
      unset __usage
      ;;

  esac

  __fix_dotfile_names

  echo STOWING  *

  cd .dotfiles
  stow -S * --dotfiles
  cd - &> /dev/null

  cd - &> /dev/null
}
