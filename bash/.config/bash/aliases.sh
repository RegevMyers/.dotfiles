alias v='nvim'
alias j='just'
alias t='tree --gitignore -l'
alias f='fd --hidden --follow --type file --type symlink'
alias d='dict -d wn'

alias fd='fdfind'

alias minish="unset PROMPT_COMMAND; PS1='\[\033[0m\]¢ '"

alias c='clear'
alias cmsh="clear; minish"

# TODO: replace with eza
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

alias agpl='curl https://raw.githubusercontent.com/IQAndreas/markdown-licenses/refs/heads/master/gnu-agpl-v3.0.md -o LICENSE.md'

alias reload='source $HOME/.bashrc'

alias q='quiet'
alias q-bg='quiet-bg'

alias pi='ssh regev@10.0.0.16'

alias luz='z; z luz; .venv/bin/python scripts/view_schedule.py; z -; echo'

