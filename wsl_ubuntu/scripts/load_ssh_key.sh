#!/bin/bash

cleanup_lockfile() {
  echo "Cleaning up earlier runs of ssh-agent"
  rm ~/.ssh/ssh_auth_sock > /dev/null 2>&1
}

## clean up earlier runs of ssh-agent
check_ssh_process_and_clean_up() {
  TMP_PROCESSES=`ps -ux | grep ssh-agent | wc -l`
  SSH_AGENT_PROCESSES=$(($TMP_PROCESSES-1))
  echo "Currently ssh agent running: ${SSH_AGENT_PROCESSES}"
  (($SSH_AGENT_PROCESSES > 0)) || cleanup_lockfile
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

load_private_key() {
  echo "Loading private key (or reuse loaded key(s))... "
  export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
  ssh-add -l > /dev/null || ssh-add ~/.ssh/id_ecdsa
}

check_ssh_process_and_clean_up
load_ssh_agent_once
load_private_key
