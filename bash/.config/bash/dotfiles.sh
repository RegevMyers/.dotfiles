function dotfiles {
  __orig_dir="$PWD"

  case "$1" in
    show)
      tree --noreport -a -I .git .dotfiles
      ;;

    add)
      __pkg="$2"
      __file="$3"
      __dir=${__file%/*}
      
      # TODO: use dirname
      if [ $__dir == $__file ]; then
        __dir=""
      fi

      echo -e "CREATING | .dotfiles/$__pkg/$__dir"
      mkdir -p ".dotfiles/$__pkg/$__dir"

      echo -e "MOVING   | $__file  ->  .dotfiles/$__pkg/$__dir"
      mv "$__file" ".dotfiles/$__pkg/$__dir"

      unset __pkg
      unset __file
      unset __dir
      ;;
      
    sync)
      cd $HOME/.dotfiles
      
      echo "SYNCING"
      
      quiet git add -A
      quiet git commit -a -m "Sync: $(date)" 
      quiet git pull --rebase origin main 
      quiet git push origin main
      ;;

    *)
      __usage="Usage: dotfiles command\n\nCommands:\n\tshow\n\tadd <pkg> <file>\n\tsync"
      echo -e "$__usage"
      exit 0
      ;;

  esac

  cd $HOME/.dotfiles
  echo "STOWING  | $(ls -1 | tr '\n' ' ')"
  stow -S $(ls -1 | tr '\n' ' ')

  cd $__orig_dir
}
