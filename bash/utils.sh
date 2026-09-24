function winpath {
    echo -E "$1" | sed 's|C:|/mnt/c|g' | sed 's|\|/|g'
}

function zv {
    f | fzf -1 -q "$@" | xargs nvim
}

alias agpl='curl https://raw.githubusercontent.com/IQAndreas/markdown-licenses/refs/heads/master/gnu-agpl-v3.0.md -o LICENSE.md'

alias reload='source $HOME/.bashrc'
