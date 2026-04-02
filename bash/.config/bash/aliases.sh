alias v='nvim'
alias j='just'
alias t='tree --gitignore --noreport'
alias f='fdfind --hidden --type file --type symlink --type block-device --type char-device --type socket --type pipe'

alias minish="unset PROMPT_COMMAND; PS1='\[\033[0m\]¢ '"

alias c='clear'
alias cf='clear; echo; fastfetch'
alias cmsh="clear; minish"

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

# alias bonsai='cbonsai --live --time=5 --multiplier=7 --base=2 --leaf=\@,\$,\%,\&,\*,\?'
# alias screensaver='tmux popup -x 0% -y 0% -h 100% -w 100% -E "cbonsai --live --time=5 --multiplier=7 --base=2 --leaf=\@,\$,\%,\&,\*,\?"'

alias poem='$HOME/repos/poem/poem.sh'

alias q='quiet'
alias q-bg='quiet-bg'

