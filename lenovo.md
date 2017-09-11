# Lenovo Thinkpad

Installed Windows installers (mostly) in `D:\Apps` (and sometimes in the default `C:\Progam Files` (and `C:\Program Files (x86)`)).

**verwijderd** _(van standaard geïnstalleerde apps)_
- Google Chrome (verouderd)
- Java 7 + Java 7 64bits (verouderd + onjuiste update versie)

**apps**
- _Minimal set up_
  - [Google Chrome](https://www.google.com/chrome/browser/desktop/index.html)
  - [Dropbox](https://www.dropbox.com)
  - [KeePass](http://keepass.info/download.html)
  - [7zip](http://www.7-zip.org/download.html)
  - Cisco VPN AnyConnect (Kadaster provided)
- _Tools_
  - [PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)
  - [ConEmu](https://conemu.github.io/)
  - [mRemote](https://mremoteng.org/download)
  - [Git client](https://git-scm.com/downloads) (+ [global config](http://wiki.cs.kadaster.nl/wiki/index.php/Git-scm#Git_client))
  - [JDK 1.8](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
  - <s>JDK 1.7</s>
  - [Maven](https://maven.apache.org/download.cgi)
  - [NodeJS](https://nodejs.org/en/download/)
  - [ProcessExplorer](https://technet.microsoft.com/en-us/sysinternals/processexplorer.aspx)
  - [Local Docker Development Environment](http://github.so.kadaster.nl/javaexp/local-docker-dev-env) (incl VirtualBox)
- _Software_
  - [Sublime Text](https://www.sublimetext.com/)
  - [IntelliJ](https://www.jetbrains.com/idea/download/) (Ultimate Edition)
  - [Slack for Windows](https://slack.com/ssb/download-win) (incl. .Net Framework 4.6 ?)
  - [Beyond Compare 4](https://www.scootersoftware.com/download.php) (+ [license](http://wiki.cs.kadaster.nl/wiki/index.php/Beyond_compare))
  - [GIMP for Windows](https://www.gimp.org/downloads/)
  - [Altova XMLSpy Professional Edition](https://www.altova.com/download_current.html) (64bits) (+ [license](http://wiki.cs.kadaster.nl/wiki/index.php/Xmlspy))
  - [Slack](https://slack.com/downloads/windows)
  - [Archimate](https://www.archimatetool.com/)
- _[Chocolaty](https://chocolatey.org/install)_
  - [Jekyll + Ruby (on Windows)](https://jekyllrb.com/docs/windows/#installation) _(hmm... dat werkt niet gelijk en gemakkelijk; over naar Docker image [jekyll/jekyll](https://hub.docker.com/r/jekyll/jekyll/)?)_


**Environment Settings**

    GIT_SSH=plink
    JAVA_HOME=D:\apps\Java\jdk1.8.0_101
    JAVA_OPTS=-Xms512m -Xmx1024m -XX:MaxPermSize=512m
    M2_HOME=D:\apps\apache-maven-3.3.1
    PATH=%JAVA_HOME%\bin;%PATH%;%M2_HOME%\bin
