# Lenovo Thinkpad

Installed Windows installers (mostly) in `D:\Apps` (and sometimes in the default `C:\Progam Files` (and `C:\Program Files (x86)`)).

**verwijderd** _(van standaard geïnstalleerde apps)_
- Google Chrome (verouderd)
- Java 7 + Java 7 64bits (verouderd + onjuiste update versie)

**apps**
- _Minimal set up_
  - Google Chrome
  - Dropbox
  - KeePass
  - 7zip
  - Cisco VPN AnyConnect (Kadaster provided)
- _Tools_
  - PuTTY
  - ConEmu
  - mRemote
  - Git client (+ [global config](http://wiki.cs.kadaster.nl/wiki/index.php/Git-scm#Git_client))
  - JDK 1.8
  - <s>JDK 1.7</s>
  - Maven
  - NodeJS
  - ProcessExplorer
  - [Local Docker Development Environment](http://github.so.kadaster.nl/javaexp/local-docker-dev-env) (incl VirtualBox)
- _Software_
  - Sublime Text 3 + [package control](https://packagecontrol.io/installation)
  - IntelliJ (Ultimate Edition)
  - [Slack for Windows](https://slack.com/ssb/download-win)
  - Beyond Compare 4
  - GIMP for Windows
  - Altova XMLSpy (64bits)
  - Slack
  - [Archimate](https://www.archimatetool.com/)

**Environment Settings**

    GIT_SSH=plink
    JAVA_HOME=D:\apps\Java\jdk1.8.0_101
    JAVA_OPTS=-Xms512m -Xmx1024m -XX:MaxPermSize=512m
    M2_HOME=D:\apps\apache-maven-3.3.1
    PATH=%JAVA_HOME%\bin;%PATH%;%M2_HOME%\bin
