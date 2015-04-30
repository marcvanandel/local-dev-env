# Lenovo Thinkpad

De zware, virtuele Java SO PC's gaan met de migratie van ons DataCenter naar Capgemini over naar laptops: [SO-1164](http://jira.so.kadaster.nl/browse/SO-1164) en [JAVA-176](http://jira.so.kadaster.nl/browse/JAVA-176).

## Installed software

Installed Windows installers in `C:\Progam Files` (and `C:\Program Files (x86)`).

Installed other software in `D:\apps`

- Google Chrome
- Sublime Text 3
- Git client
- IntelliJ (Community Edition)
- Maven
- JDK 1.7
- JDK 1.5 (voor HPUX :( )
- Dropbox
- KeePass
- 7zip
- [Chocolatey](https://chocolatey.org/)
- Console2 (via Chocolatey)
- Firefox
- PuTTY
- Spark IM (incl JDK anders werkt 't niet)
- Telegram
- Beyond Compare 3 (Kadaster has no licence for 4)
- SQL Developer

## Settings

**Environment Settings**

	GIT_SSH=plink
	JAVA_HOME_7=D:\apps\Java\jdk1.7.0_79
	JAVA_HOME=%JAVA_HOME_7%
    JAVA_OPTS=-Xms512m -Xmx1024m -XX:MaxPermSize=512m
    M2_HOME=D:\apps\apache-maven-3.3.1
    PATH=%JAVA_HOME%\bin;%PATH%;%PUTTY_HOME%;%M2_HOME%\bin
    PUTTY_HOME=D:\apps\PuTTY
