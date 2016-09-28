# Lenovo Thinkpad

## Laatste installatie

Installed Windows installers in `C:\Progam Files` (and `C:\Program Files (x86)`).

**apps**
- Google Chrome
- Sublime Text 3 + [package control](https://packagecontrol.io/installation)
- Git client (+ [global config](http://wiki.cs.kadaster.nl/wiki/index.php/Git-scm#Git_client))
- IntelliJ (Community Edition)
- Dropbox
- KeePass
- 7zip
- [Slack for Windows](https://slack.com/ssb/download-win)
- ConEmu
- Beyond Compare 4
- Gimp
- VirtualBox + Extensions
- mRemote
- Altova XMLSpy (64bits)

Installed other software in `D:\apps`

- JDK 1.8
- JDK 1.7
- Maven
- ProcessExplorer
- PuTTY
- [Local Docker Development Environment](http://github.so.kadaster.nl/javaexp/local-docker-dev-env) (incl VirtualBox, Vagrant)

**Environment Settings**

    GIT_SSH=plink
    JAVA_HOME7=D:\apps\Java\jdk1.7.0_79
    JAVA_HOME8=D:\apps\Java\jdk1.8.0_101
    JAVA_HOME=%JAVA_HOME8%
    JAVA_OPTS=-Xms512m -Xmx1024m -XX:MaxPermSize=512m
    M2_HOME=D:\apps\apache-maven-3.3.1
    PATH=%JAVA_HOME%\bin;%PATH%;%PUTTY_HOME%;%M2_HOME%\bin
    PUTTY_HOME=D:\apps\PuTTY



## Eerdere installaties

De zware, virtuele Java SO PC's gaan met de migratie van ons DataCenter naar Capgemini over naar laptops: [SO-1164](http://jira.so.kadaster.nl/browse/SO-1164) en [JAVA-176](http://jira.so.kadaster.nl/browse/JAVA-176).

### Installed software

Installed Windows installers in `C:\Progam Files` (and `C:\Program Files (x86)`).

**system**
- Lenovo ThinkPad [Hotkey Features Integration Windows 7](http://support.lenovo.com/nl/nl/products/laptops-and-netbooks/thinkpad-t-series-laptops/thinkpad-t540p/downloads/DS101334)

**apps**
- Google Chrome
- Sublime Text 3 + [package control](https://packagecontrol.io/installation)
- Git client
- IntelliJ (Community Edition)
- Dropbox
- KeePass
- 7zip
- [Slack for Windows](https://slack.com/ssb/download-win)
- [Chocolatey](https://chocolatey.org/)
- Console2 (via Chocolatey: `choco install console2`)
- Firefox
- Beyond Compare 4
- Gimp
- VirtualBox + Extensions
- Boot2Docker for Windows :D
- Vagrant (from [vagrant up](https://www.vagrantup.com/))
- mRemote
- JXplorer (Open Source LDAP Browser)
- SoapUI + HermesJMS (OpenSource versions)
- Altova XMLSpy (64bits)
- HermesJMS (volgens [Oracle AQ wiki](http://wiki.cs.kadaster.nl/wiki/index.php/Oracle_AQ#HermesJMS); including typo fix in `bin/hermes.bat:44`: `if no exist` > `if not exist`)
- TortoiseSVN (_deprecated_ ;-)

Installed other software in `D:\apps`

- JDK 1.8
- JDK 1.7
- JDK 1.5 (voor HPUX :( )
- Maven
- ProcessExplorer
- PuTTY
- SQL Developer
- Tomcat 7 (JBoss EWS / JAP4 version: [http://linuxrepository.so.kadaster.nl/repositories/public/trunk/Tomcat/](http://linuxrepository.so.kadaster.nl/repositories/public/trunk/Tomcat/libs/))
- Apache WebServer (httpd) v2.2.25 (no_ssl msi)
- mingw-get + msys-make:

commands:

    bin/mingw-get install msys-make
    cp msys/1.0/bin/* <GIT_HOME>/bin                --> no replace just addition of extra libs

### Settings

**Environment Settings**

    GIT_SSH=plink
    JAVA_HOME_7=D:\apps\Java\jdk1.7.0_79
    JAVA_HOME=%JAVA_HOME_7%
    JAVA_OPTS=-Xms512m -Xmx1024m -XX:MaxPermSize=512m
    M2_HOME=D:\apps\apache-maven-3.3.1
    PATH=%JAVA_HOME%\bin;%PATH%;%PUTTY_HOME%;%M2_HOME%\bin
    PUTTY_HOME=D:\apps\PuTTY

**System**

To turn it on or off:

> 1.  right-click on desktop -> "Screen resolution"
> 2.  click on "Geavanceerde instellingen"
> 3.  click on the "Weergave op scherm" tab
> 4.  NUM lock AAN "De indicator enkele seconden afbeelden"

### Docker

The Kadaster internal network Docker host, called yoda hosts (Your Own Docker Application), can be connected to via SSH. To develop Dockerfiles and containers it would be very convenient to test them locally (on my laptop). Docker only runs on Linux and for Windows (and OSX) there are Docker Tools available. These tools are based on porting local commands to a running VM on your machine (inside VirtualBox by default). Without VPN this works great! ... but the Dockerfiles will have the proxy because they will have to work on Kadaster internal network. With the VPN enabled the local VMs are unreachable ([SO-1329](http://jira.so.kadaster.nl/browse/SO-1329)) so these tools are not an option.

Second solution is running a VM with Docker and develop the Dockerfiles and containers inside it. It would be very convenient if this is a provided VM (image) from PLP so it would be similar (if not equal) to the real machines. Alternative is to set up a Ubuntu Desktop yourself.

#### Ubuntu Desktop

Network is NAT. Open Netwerk settings in Ubuntu and set Network Proxy > Apply system wide. After this `sudo apt-get update` works :) Now Docker can be installed following these instructions: [https://docs.docker.com/installation/ubuntulinux/](https://docs.docker.com/installation/ubuntulinux/)

# Re-install from fresh image

Op 11 nov 2015 heb ik een nieuw image op m'n laptop laten zetten ...

#### Worklog 11 nov 2015
- Windows Update afgemaakt
- Dropbox geïnstalleerd
- Theme ingesteld
- Resolutie verlaagd + 'normaal view' (= 100%)
- Google Chrome geïnstalleerd
- Gedeïnstalleerd: RES Workspace Manager 2014 SR2 Agent
- Virusscanner geïnstalleerd (downloaded via https://mail.kadaster.nl)
- KeePass 2 handmatig verwijderd (alle reg-keys handmatig verwijderd + handmatige delete van folder in Program Files (x86) )
- KeePass 2 laatste versie geïnstalleerd

! nu werkt de achtergrond niet meer !

- Gedeïnstalleerd: RES Automation Manager 2014 SR4 Agent
  (ging eerste keer niet goed; 3e poging na opnieuw opstarten werkt)

! hersteld naar voor verwijdering van RES !

- Gedeïnstalleerd: RES Workspace Manager 2014 SR2 Agent
- Dropbox geïnstalleerd
- Resolutie verlaagd + 'normaal view' (= 100%)
- Google Chrome geïnstalleerd
- KeePass 2 laatste versie geïnstalleerd
- Virusscanner geïnstalleerd (downloaded via https://mail.kadaster.nl)

- 7zip
- ConEmu
- Git for Windows
- PuTTy
- Sublime Text 3 + package control
- JDK 7
- JDK 8
- Maven
- IntelliJ
> setting up .ssh and .m2
- Slack for Windows (incl .Net 4)

#### Worklog 18 nov 2015
- Beyond Compare 4
- node.js (5.1)

#### Worklog 26 nov 2015
- mRemote

#### Worklog 16 mrt 2016 - Fresh install

Na opnieuw een 'fresh image' opnieuw de boel installeren. Daarbij heb ik geprobeerd om de 'Mijn Afbeeldingen' te verplaatsen naar mijn Amazon cloud folder:

- Open Regedit(.exe)
- Wijzig
-- `HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\My Pictures` van `D:\andelm\Mijn Documenten\My Pictures` naar `D:\Cloud Drive Downloads\Fotoboek`
-- `HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders\My Pictures` van `D:\andelm\Mijn Documenten\My Pictures` naar `D:\Cloud Drive Downloads\Fotoboek`
