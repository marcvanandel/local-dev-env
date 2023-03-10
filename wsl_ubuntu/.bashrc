## replace prompt layout above with this:
## PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;32m\] $(kube_ps1)$(__git_ps1)\[\033[00m\] \$ '

#################################
## customization local-dev-env ##
#################################

if [ -f ~/local-dev-env/wsl_ubuntu/.bash_aliases ]; then
    . ~/local-dev-env/wsl_ubuntu/.bash_aliases
fi

# add scripts path to PATH
export PATH="~/.envs:~/local-dev-env/wsl_ubuntu/scripts:$PATH"

# load private key
. ~/local-dev-env/wsl_ubuntu/scripts/load_ssh_key.sh

# python virtual envs
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Load pyenv-virtualenv automatically by adding
# the following to ~/.bashrc:

eval "$(pyenv virtualenv-init -)"
