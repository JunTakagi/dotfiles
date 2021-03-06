alias gcc='g++'

STORM_HOME=/usr/local/storm
PATH=$PATH:$STORM_HOME/bin

if [ -f /opt/local/share/git-core/contrib/completion/git-completion.bash ]
then
  source /opt/local/share/git-core/contrib/completion/git-completion.bash
fi
if [ -f /opt/local/share/git-core/contrib/completion/git-prompt.sh ]
then
  source /opt/local/share/git-core/contrib/completion/git-prompt.sh
fi

PS1='\[\033[1;32m\]\u@\h:\[\033[0;32m\]\W\[\033[1;31m\]$(__git_ps1) \[\033[0m\]\$ '

_KNOWS_HOSTS_=`cat ~/.ssh/known_hosts | sed -E 's/\[([a-zA-Z0-9\.]*)\].*/\1/' | sed -E 's/([0-9\.]*) .*/\1/' | sed 's/,.*//'`

complete -c -f sudo
complete -c man
complete -c which
complete -W "$_KNOWS_HOSTS_" ssh
complete -f -W "_KNOWS_HOSTS_" scp

alias ls="ls -F"
alias ll="ls -lhF"
alias javac="javac -J-Dfile.encoding=UTF-8"
alias java="java -Dfile.encoding=UTF-8"

export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
