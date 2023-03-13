# Lenovo P52 Windows 10

## Hardware

_Hardware specs die relevant zijn voor het installeren van de juiste drivers e.d._:

- [NVIDIA Quadro P1000 DCH](https://www.nvidia.com/Download/index.aspx?lang=en-us)

## Notes


### MSYS

> `Deprecated -> replaced by WSL2` :muscle:

In sommige gevallen is het aanvullen van paden in MSYS ongewenst.
Dit kan worden 'uitgezet' met (zie [issue](https://github.com/git-for-windows/git/issues/577#issuecomment-166118846)):

`export MSYS_NO_PATHCONV=1`

### PowerShell

Set up my PowerShell profile by:

- open a PowerShell terminal
- create a profile: `New-Item -path $profile -type file –force`
- edit the profile (`code $profile`) and paste [this saved profile](windows/Microsoft.PowerShell_profile.ps1) into it

## Deleted

_nothing yet_

## Installed

### Manual

_not preferably ... but sometimes the only option ..._ :(

- ~~[Archi](https://www.archimatetool.com/download/)~~
- [Lenovo System Update](https://support.lenovo.com/nl/en/downloads/ds012808)
- ~~[CUDA Toolkit](https://developer.nvidia.com/cuda-toolkit) (for SpaCy)~~
- ~~[NVIDIA Quadro P1000 DCH driver](https://www.nvidia.com/Download/index.aspx?lang=en-us) _(current version: 430.64)_~~
- [Microsoft PowerToys](https://learn.microsoft.com/en-us/windows/powertoys/install)

### Microsoft Store

- English (United States) Local Experience Pack
- [Windows Terminal](https://github.com/microsoft/terminal) -> `choco install microsoft-windows-terminal`
- [WSL2 Ubuntu](wsl_ubuntu/)

### Choco

Eerst heb ik [chocolatey](https://chocolatey.org/) geïnstalleerd. En vervolgens daarmee de rest:

Start a PowerShell terminal with elevated rights: `openadmin` (see [PowerShell config](#powershell))

```
choco install dropbox -y
choco install vscode -y
choco install slack -y
choco install 7zip -y
choco install evernote -y
choco install procexp -y
choco install google-backup-and-sync -y
choco install gimp -y
choco install brave -y
choco install inkscape -y
choco install element-desktop -y

# IoT
choco install arduino -y
```

### Scoop

Eerst heb ik [Scoop.sh](https://scoop.sh/) geïnstalleerd. En vervolgens daarmee de rest:

`Set-ExecutionPolicy RemoteSigned -scope CurrentUser`

```
scoop install adb                  (cozmo)
scoop install kubectl              (+ added `%USERPROFILE%\scoop\apps\kubectl\current\bin` to %PATH%)
scoop install kompose
```

_removed `nodejs` 'cause this can be installed in a `conda` environment_


### SdkMan! & Gradle

First install [SdkMan!](https://sdkman.io/) and additional `zip`:

> SDKMan need zip, which is not included by Windows Git Bash by default. To resolve this, go to https://sourceforge.net/projects/gnuwin32/files/ and find zip in the list. Download zip-3.0-bin.zip and extract zip.exe in the bin folder. Copy it to *c:\Program Files\Git\usr\bin*. And run SDKMan install script again.

Secondly install [Gradle](https://gradle.org/install/) using SdkMan:

In Git Bash:

```
sdk install gradle 5.6.2
```

Create a fresh Gradle / Kotlin project:

```
gradle init --dsl kotlin
```


### Environment Settings

> `Deprecated -> replaced by WSL2` :muscle:

    GIT_SSH=plink
    JAVA_HOME=%JAVA_HOME_ADOPT_11%
    JAVA_HOME_ADOPT_11=C:\Program Files\AdoptOpenJDK\jdk-11+28
    JAVA_HOME_ORACLE_8=C:\Program Files\Java\jdk1.8.0_201
    PATH
      - `%JAVA_HOME%\bin` toegevoegd; andere JDK/JRE paths verwijderd
      - `C:\.work\repos\local-dev-env\scripts` toegevoegd
      - `%USERPROFILE%\scoop\apps\kubectl\current\bin` toegevoegd

### Aanpassingen

- [Write access to USB](https://www.tenforums.com/tutorials/96998-deny-write-access-removable-drives-not-protected-bitlocker.html)

> `Deprecated -> replaced by WSL2` :muscle:

- PuTTY Agent & Load Key shortcut in `C:\Users\[user]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`
- Standaard startups verwijderd: `C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp` (Intranet, Winzip Preloader)
- Docker local user: (see internal documentation of local-docker-env)
- [Make Windows 10 accept file paths over 260 characters](https://www.howtogeek.com/266621/how-to-make-windows-10-accept-file-paths-over-260-characters/)

#### VirtualEnv

```
virtualenv ansible                  - for Ansible k8s on rPi
```
