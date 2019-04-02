alias ll='ls -al'

## git
export GIT_SSH=plink
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit -m '
alias gd='git diff'

## maven
alias mcp='clear && echo "mvn clean package" && mvn clean package'
alias mct='clear && echo "mvn clean test" && mvn clean test'
alias mcd='clear && echo "mvn clean deploy" && mvn clean deploy'
alias mp='clear && echo "mvn package" && mvn package'
alias mci='clear && echo "mvn clean install" && mvn clean install'

## folders
alias e.='explorer .'
alias data='cd /c/.data/'
alias work='cd /c/.work/'
alias repos='cd /c/.work/repos/'
alias etc='cd /c/.work/etc/'

## winpty
alias python='winpty python'
alias docker='winpty docker'
alias vue='winpty vue.cmd'

## docker
eval "$(docker-machine env default --no-proxy --shell bash 2>/dev/null)"

## conda config
. /c/tools/Anaconda3/etc/profile.d/conda.sh
echo execute: conda activate

## akte-ai
alias server='/c/.work/etc/akte-extractor/gradlew -q server --args="/c/.data/aktes-2"'
