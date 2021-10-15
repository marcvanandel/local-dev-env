# WSL 2 Ubuntu set up

> [WSL2 memory settings](https://medium.com/@lewwybogus/how-to-stop-wsl2-from-hogging-all-your-ram-with-docker-d7846b9c5b37)

WSL staat voor Windows Subsystem for Linux. Ik heb [Ubuntu WSL](https://wiki.ubuntu.com/WSL) geïnstalleerd (niet via Windows Store, want die werkt niet).

## Env Set Up

- copy-paste [this](.bashrc) `.bashrc` into `~`
  - enabling all sorts of aliases and scripts to be run from this `scripts` folder

## Scripts

Smart creation and loading of virtual environments based on [virtualenv](https://virtualenv.pypa.io/en/latest/installation.html) and [nodeenv](https://pypi.org/project/nodeenv/#local-installation) by:

```bash
$ create_env <env>

$ . <env>
```

## Installed software

De volgende packages geïnstalleerd:

```
sudo apt-get update
sudo apt install virtualenv
sudo apt install nmp
sudo apt install gnome-disk-utility
```

- kubernetes tools
  - [krew - kubectl package manager](https://krew.sigs.k8s.io/docs/user-guide/setup/install/)
  - [kubectx](https://github.com/ahmetb/kubectx) (with `krew`)
  - [kubens](https://github.com/ahmetb/kubectx) (with `krew`)
  - [kube-ps1](https://github.com/jonmosco/kube-ps1) (cloned in `~/.kube`)

- npm -> with `create_env` [script](#scripts)
