alias v='nvim'
alias j='just'
alias ff='fastfetch'

alias minish="unset PROMPT_COMMAND; PS1='\[\033[0m\]¢ '"

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

alias agpl='curl https://www.gnu.org/licenses/agpl-3.0.txt -o LICENSE'
alias agplmd='curl https://raw.githubusercontent.com/IQAndreas/markdown-licenses/refs/heads/master/gnu-agpl-v3.0.md -o LICENSE.md'

alias screensaver='tmux popup -E -x 0% -y 0% -h 100% -w 100% "cbonsai --live --time=5 --life=75 --base=2 --leaf=\@,\$,\%,\&,\*,\?"'

alias poem='$HOME/repos/poem/poem.sh'
alias cpoem='c; echo; poem; echo;'

