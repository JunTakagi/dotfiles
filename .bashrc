alias gcc='g++'

PS1="\u@\h:\w\$ "

_KNOWS_HOSTS_=`cat ~/.ssh/known_hosts | sed -E 's/\[([a-zA-Z0-9\.]*)\].*/\1/' | sed -E 's/([0-9\.]*) .*/\1/' | sed 's/,.*//'`

complete -c -f sudo
complete -c man
complete -c which
complete -W "$_KNOWS_HOSTS_" ssh
complete -f -W "_KNOWS_HOSTS_" scp

alias ls="ls -F"
alias ll="ls -lhF"
