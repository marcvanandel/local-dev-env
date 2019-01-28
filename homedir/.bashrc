export GIT_SSH=plink
alias ll='ls -al'
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit -m '
alias gd='git diff'
alias mcp='clear && echo "mvn clean package" && mvn clean package'
alias mct='clear && echo "mvn clean test" && mvn clean test'
alias mcd='clear && echo "mvn clean deploy" && mvn clean deploy'
alias mp='clear && echo "mvn package" && mvn package'
alias mci='clear && echo "mvn clean install" && mvn clean install'
alias e.='explorer .'

export GROOVY_SCRIPT_HOME='/h/apps/scripts/'
alias g='groovy /h/apps/scripts/g.groovy'
alias deploy='g d *.war jap4'

alias python='winpty python'

eval "$(docker-machine env default --no-proxy --shell bash 2>/dev/null)"

echo execute: conda activate
