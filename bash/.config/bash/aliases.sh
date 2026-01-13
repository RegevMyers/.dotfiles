alias v='nvim'
alias ff='fastfetch'

alias minsh="unset PROMPT_COMMAND; PS1='\[\033[0m\]¢ '"

alias c='clear'
alias cf='clear; echo; fastfetch'
alias cmsh="clear; minish"

alias ll='ls -AlFh'
alias la='ls -A'
alias l='ls -CF'
alias l1='ls -A1Fh'
alias lh='ls -AlFhH'

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias agpl="curl https://www.gnu.org/licenses/agpl-3.0.txt -o LICENSE"

