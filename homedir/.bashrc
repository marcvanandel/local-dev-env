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
alias kube='cd /c/.data/kube/'
alias work='cd /c/.work/'
alias repos='cd /c/.work/repos/'
alias etc='cd /c/.work/etc/'
alias play='cd /c/.work/play/'

## winpty
alias python='winpty python'
alias docker='winpty docker'
alias vue='winpty vue.cmd'

## docker
eval "$(docker-machine env default --no-proxy --shell bash 2>/dev/null)"
alias loadkube='. loadkube.sh'
alias k='kubectl'

# azure cli
alias az='az.cmd'

## conda config
# . /c/tools/Anaconda3/etc/profile.d/conda.sh
echo "execute: source activate"

## akte-ai
alias server='/c/.work/etc/akte-extractor/gradlew -q server --args="/c/.data/aktes-2"'
alias akai='cd /c/.work/akai'

export no_proxy='so.kadaster.nl,cs.kadaster.nl'

complete -C C:\Users\AndelMarcvan\scoop\apps\minio-client\current\mc.exe mc

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/c/Users/AndelMarcvan/.sdkman"
[[ -s "/c/Users/AndelMarcvan/.sdkman/bin/sdkman-init.sh" ]] && source "/c/Users/AndelMarcvan/.sdkman/bin/sdkman-init.sh"
