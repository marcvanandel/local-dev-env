# Lenovo Thinkpad

De zware, virtuele Java SO PC's gaan met de migratie van ons DataCenter naar Capgemini over naar laptops: [SO-1164](http://jira.so.kadaster.nl/browse/SO-1164) en [JAVA-176](http://jira.so.kadaster.nl/browse/JAVA-176).

## Installed software

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

## Settings

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

## Docker

The Kadaster internal network Docker host, called yoda hosts (Your Own Docker Application), can be connected to via SSH. To develop Dockerfiles and containers it would be very convenient to test them locally (on my laptop). Docker only runs on Linux and for Windows (and OSX) there are Docker Tools available. These tools are based on porting local commands to a running VM on your machine (inside VirtualBox by default). Without VPN this works great! ... but the Dockerfiles will have the proxy because they will have to work on Kadaster internal network. With the VPN enabled the local VMs are unreachable ([SO-1329](http://jira.so.kadaster.nl/browse/SO-1329)) so these tools are not an option.

Second solution is running a VM with Docker and develop the Dockerfiles and containers inside it. It would be very convenient if this is a provided VM (image) from PLP so it would be similar (if not equal) to the real machines. Alternative is to set up a Ubuntu Desktop yourself.

### Ubuntu Desktop

Network is NAT. Open Netwerk settings in Ubuntu and set Network Proxy > Apply system wide. After this `sudo apt-get update` works :) Now Docker can be installed following these instructions: [https://docs.docker.com/installation/ubuntulinux/](https://docs.docker.com/installation/ubuntulinux/)
