alias v='nvim'
alias j='just'
alias t='eza --all --git-ignore --tree'
alias f='fdfind --hidden --type file --type symlink --type block-device --type char-device --type socket --type pipe'

alias minish="unset PROMPT_COMMAND; PS1='\[\033[0m\]¢ '"

alias c='clear'
alias cmsh="clear; minish"

alias q='quiet'
alias q-bg='quiet-bg'

alias poem='$HOME/repos/poem/poem.sh'

alias ll='ls -AlFh'
alias la='ls -A'
alias l1='ls -A1Fh'
alias lh='ls -AlFhH'
alias l='ls -CF'

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

