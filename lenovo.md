# Lenovo Thinkpad

De zware, virtuele Java SO PC's gaan met de migratie van ons DataCenter naar Capgemini over naar laptops: [SO-1164](http://jira.so.kadaster.nl/browse/SO-1164) en [JAVA-176](http://jira.so.kadaster.nl/browse/JAVA-176).

## Installed software

Installed Windows installers in `C:\Progam Files` (and `C:\Program Files (x86)`).

**system**
- Lenovo ThinkPad [Hotkey Features Integration Windows 7](http://support.lenovo.com/nl/nl/products/laptops-and-netbooks/thinkpad-t-series-laptops/thinkpad-t540p/downloads/DS101334)

**apps**
- Google Chrome
- Sublime Text 3
- Git client
- IntelliJ (Community Edition)
- Dropbox
- KeePass
- 7zip
- [Chocolatey](https://chocolatey.org/)
- Console2 (via Chocolatey: `choco install console2`)
- Firefox
- Spark IM (incl JDK anders werkt 't niet)
- Telegram
- Beyond Compare 4
- SoapUI + HermesJMS (OpenSource versions)
- TortoiseSVN (_deprecated_ ;-)
- Gimp
- Altova XMLSpy (64bits)
- HermesJMS (volgens [Oracle AQ wiki](http://wiki.cs.kadaster.nl/wiki/index.php/Oracle_AQ#HermesJMS); including typo fix in `bin/hermes.bat:44`: `if no exist` > `if not exist`)
- VirtualBox + Extensions
- Boot2Docker for Windows :D
- mRemote
- JXplorer (Open Source LDAP Browser)

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
