function zv {
    f | fzf -1 -q "$@" | xargs nvim
}

