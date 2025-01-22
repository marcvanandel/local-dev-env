#################################
## customization local-dev-env ##
#################################

source ~/kube-ps1/kube-ps1.sh

## replace prompt layout above with this:
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;32m\] $(kube_ps1)$(__git_ps1)\[\033[00m\] \$ '

if [ -f ~/local-dev-env/wsl_ubuntu/.bash_aliases ]; then
    . ~/local-dev-env/wsl_ubuntu/.bash_aliases
fi

# add scripts path to PATH
export PATH="~/.envs:~/local-dev-env/wsl_ubuntu/scripts:$PATH"

# load private key
alias loadkey=". ~/local-dev-env/wsl_ubuntu/scripts/load_ssh_key.sh"

# python virtual envs
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Load pyenv-virtualenv automatically by adding
# the following to ~/.bashrc:
eval "$(pyenv virtualenv-init -)"

# Add krew to path
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# use kubech (checked out at ~/.kubech)
source ~/.kubech/kubech
source ~/.kubech/completion/kubech.bash

# asdf
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
