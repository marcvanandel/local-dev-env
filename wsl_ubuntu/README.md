# WSL 2 Ubuntu set up

> [WSL2 memory settings](https://medium.com/@lewwybogus/how-to-stop-wsl2-from-hogging-all-your-ram-with-docker-d7846b9c5b37)

WSL staat voor Windows Subsystem for Linux. Ik heb [Ubuntu WSL](https://wiki.ubuntu.com/WSL) geïnstalleerd (niet via Windows Store, want die werkt niet).

De volgende packages geïnstalleerd:

```
sudo apt-get update
sudo apt install virtualenv
sudo apt install nmap
sudo apt install gnome-disk-utility
```

## Installed software

- kubernetes tools
  - [krew - kubectl package manager](https://krew.sigs.k8s.io/docs/user-guide/setup/install/)
  - [kubectx](https://github.com/ahmetb/kubectx) (with `krew`)
  - [kubens](https://github.com/ahmetb/kubectx) (with `krew`)
  - [kube-ps1](https://github.com/jonmosco/kube-ps1) (cloned in `~/.kube`)

- npm
  - [nodeenv](https://pypi.org/project/nodeenv/#local-installation)
    
    ```bash
    $ virtualenv .venv-npm
    
    $ source .venv-npm/bin/activate
    
    $ pip install nodeenv
    ```
