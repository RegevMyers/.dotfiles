function winpath {
    echo "$1" | sed 's|C:|/mnt/c|g' | sed 's|\\|/|g'
}

