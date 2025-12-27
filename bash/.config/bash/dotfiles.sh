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

      echo -e "STOWING  $__pkg"
      cd .dotfiles
      stow $__pkg

      unset __pkg
      unset __file
      unset __dir
      ;;
      
    sync)
      cd .dotfiles
      
      quiet git add -A
      quiet git commit -a -m "Sync: $(date)" 
      quiet git pull --rebase origin main 
      quiet git push origin main
      ;;
      
    *)
      __usage="Usage: dotfiles command\n\tshow\n\tadd <pkg> <file>"
      echo -e "$__usage"
      unset __usage
      ;;
  esac

  cd - &>/dev/null
}
