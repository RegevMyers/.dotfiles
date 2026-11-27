function winpath {
    echo -E "$1" | sed 's|C:|/mnt/c|g' | sed 's|\\|/|g'
}

