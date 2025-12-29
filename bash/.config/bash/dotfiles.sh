function dotfiles {
  __orig_dir="$PWD"
  
  __dotfiles_dir="$HOME/.dotfiles"

  case "$1" in
    show)
      tree --noreport -a -I .git .dotfiles
      ;;

    add)
      __pkg="$2"
      __file="$3"
      __dir="$(dirname $__file)"
      
      echo -e "CREATING | $__dotfiles_dir/$__pkg/$__dir"
      mkdir -p "$__dotfiles_dir/$__pkg/$__dir"

      echo -e "MOVING   | $__file  ->  $__dotfiles_dir/$__pkg/$__dir"
      mv "$__file" "$__dotfiles_dir/$__pkg/$__dir"

      unset __pkg
      unset __file
      unset __dir
      ;;
      
    sync)
      cd $__dotfiles_dir 
      
      echo "SYNCING  | $(git remote get-url origin)"
      
      quiet git add -A
      quiet git commit -a -m "Sync: $(date)" 
      quiet git pull --rebase origin main 
      quiet git push origin main
      ;;

    *)
      __usage="Usage: dotfiles <command>\nCommands:\n\tshow\n\tadd <pkg> <file>\n\tsync"
      echo -e "$__usage"
      return 0
      ;;

  esac

  # TODO: get rid of the cd
  cd $__dotfiles_dir
  echo "STOWING  | $(ls -d */ | sed 's|/||g' | tr '\n' ' ')"
  stow -S $(ls -d */ | sed 's|/||g' | tr '\n' ' ')

  cd $__orig_dir

  return 0
}
