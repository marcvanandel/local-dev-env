# WSL 2 Ubuntu set up

> [WSL2 memory settings](https://medium.com/@lewwybogus/how-to-stop-wsl2-from-hogging-all-your-ram-with-docker-d7846b9c5b37)

WSL staat voor Windows Subsystem for Linux.

## Scripts

Smart creation and loading of virtual environments based on [pyenv-installer](https://github.com/pyenv/pyenv-installer) and [nodeenv](https://pypi.org/project/nodeenv/#local-installation) by:

```bash
create_env <env>

. <env>
```

Updating git repos (a.k.a. `git pull`) in a loop over multiple subdirectories:

```bash
ls -d */ | xargs -n1 gitupdate
```

## Installation

Geïnstalleerd mbv de [manual install](https://learn.microsoft.com/en-us/windows/wsl/install-manual). Ubuntu 22.04 LTS geïnstalleerd.

## Env Set Up

- this repo by:
  ```bash
  ## navigate to home dir
  cd
  git clone <url-to-this-repo>
  ```
- copy-paste [this](.bashrc) snippet at the bottom of `.bashrc` into `~`
- enabling all sorts of aliases and scripts to be run from this `scripts` folder
- content of `/etc/wsl.conf` (and restart wsl after changing in PowerShell: `wsl --shutdown`)
  ```bash
  [boot]
  systemd=true
  
  [automount]
  enabled = true
  options = "metadata,umask=22,fmask=11
  ```

## Installed software

De volgende packages geïnstalleerd:

- [pyenv](https://github.com/pyenv/pyenv) via [pyenv-installer](https://github.com/pyenv/pyenv-installer)

```
update
sudo apt-get -y install python3-pip
sudo apt-get -y install podman

# inside a virtual env
# https://github.com/containers/podman-compose
pip3 install podman-compose
```

- kubernetes tools
  - ~~[krew - kubectl package manager](https://krew.sigs.k8s.io/docs/user-guide/setup/install/)~~
  - ~~[kubectx](https://github.com/ahmetb/kubectx) (with `krew`)~~
  - ~~[kubens](https://github.com/ahmetb/kubectx) (with `krew`)~~
  - [kubech](https://github.com/DevOpsHiveHQ/kubech) (replaces `kubectx`/`kubens` 'cause per terminal)
  - [kube-ps1](https://github.com/jonmosco/kube-ps1) (cloned in `~/.kube`)
  - [helm](https://helm.sh/docs/intro/install/#from-script) (from script)

- npm -> with `create_env` from [script](#scripts)
