#!/bin/bash

cleanup_ssh_lockfile() {
  echo "Cleaning up earlier runs of ssh-agent"
  rm ~/.ssh/ssh_auth_sock > /dev/null 2>&1
}

## clean up earlier runs of ssh-agent
check_ssh_process_and_clean_up() {
  TMP_PROCESSES=`ps -ux | grep ssh-agent | wc -l`
  SSH_AGENT_PROCESSES=$(($TMP_PROCESSES-1))
  echo "Currently ssh-agent running: ${SSH_AGENT_PROCESSES}"
  (($SSH_AGENT_PROCESSES > 0)) || cleanup_ssh_lockfile
}

## load the ssh-agent first time only (and reuse the ssh-agent!)
load_ssh_agent_once() {
  if [ ! -S ~/.ssh/ssh_auth_sock ]; then
    echo "Starting ssh-agent ..."
    eval $(ssh-agent -s)
    echo $SSH_AUTH_SOCK
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
  fi
}

reload_ssh_private_key() {
  echo "Loading private SSH key (or reuse loaded key(s))... "
  export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
  check_loaded_keys || load_ssh_private_key
}

check_loaded_keys() {
  echo "-- loaded keys:"
  KEYS=$(ssh-add -l)
  echo $KEYS
  if [[ "The agent has no identities." == "$KEYS" ]];
  then
    return 1
  else
    return 0
  fi
}

load_ssh_private_key() {
  if [ "$SKIP_LOAD_KEY" = false ]
  then
    ssh-add ~/.ssh/id_ecdsa
  else
    echo "-- Skip loading private key in automated mode"
  fi
}

cleanup_gpg_lockfile() {
  echo "Cleaning up earlier runs of gpg-agent"
  rm ~/.gpg/gpg_auth_sock > /dev/null 2>&1
}

## clean up earlier runs of gpg-agent
check_gpg_process_and_clean_up() {
  TMP_PROCESSES=`ps -ux | grep gpg-agent | wc -l`
  GPG_AGENT_PROCESSES=$(($TMP_PROCESSES-1))
  echo "Currently gpg-agent running: ${GPG_AGENT_PROCESSES}"
  (($GPG_AGENT_PROCESSES > 0)) || cleanup_gpg_lockfile
}

## load the gpg-agent first time only (and reuse the gpg-agent!)
load_gpg_agent_once() {
  if [ ! -S ~/.gpg/gpg_auth_sock ]; then
    echo "Starting gpg-agent ..."
    eval $(gpg-agent --daemon)
    echo $GPG_AUTH_SOCK
    ln -sf "$GPG_AUTH_SOCK" ~/.gpg/gpg_auth_sock
  fi
}

load_gpg_private_key() {
  echo "Loading private GPG key (or reuse loaded key(s))... "
  export GPG_AUTH_SOCK=~/.gpg/gpg_auth_sock
  ssh-add -l > /dev/null || ssh-add ~/.gpg/id_ecdsa
}

SKIP_LOAD_KEY=false
if [[ "$1" == "-s" ]]
then
    SKIP_LOAD_KEY=true
    echo "-- only reloading pre-loaded keys"
fi

check_ssh_process_and_clean_up
load_ssh_agent_once
reload_ssh_private_key
