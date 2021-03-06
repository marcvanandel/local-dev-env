# Windows 10 Capgemini Bevindingen

Testers: Walter van Iterson, Marc van Andel

## Logboek

_(Items over inrichting en activiteiten)_

_2017-10-26 MvA_: Nieuwe image geïnstalleerd. Dat ging de eerste keer fout, want Ronald Ruijs moest een BIOS aanpassing doen (oid?) om vervolgens nogmaals het image in te spoelen. Dat was wel binnen een uur klaar. Na inloggen e.d. kon ik direct aan de slag.

_2017-10-30 MvA_: Mbv mijn [Lenovo pagina](http://github.so.kadaster.nl/andelm/local-dev-env/blob/master/lenovo.md) alle tools gedownload en geïnstalleerd. Wat gaat dat allemaal goed! Cisco AnyConnect is standaard al deel van het image en werkt direct. Super! Naar en van slaapstand werkt heel goed. Geen BSoD meer (op dit moment)! En snel!

_2017-10-31 WvI_: De nieuwe, voorgeïnstalleerde laptop ligt klaar bij local support. Eén klein probleempje: er is vandaag niemand op de Brug aanwezig. Morgenochtend mag ik hem ophalen

_2017-11-01 MvA_: [Install Bash on Windows 10](https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/); Windows 10 Developer Mode geeft een error. Bash is wel te 'enable'n.

<img src="screenshot-bash-on-win10-installing.png" />


_2017-11-01 MvA_: Docker werkt super!! KOERS draaide in één keer zonder problemen, ook in Docker Swarmmode :D

_2017-11-02 WvI_: Bij local support langs geweest, de aanvraag voor de tweede laptop was geweigerd. Inmiddels is de toestemming wel (weer) gegeven, dus zullen ze de laptop vandaag in gaan richten

_2017-11-03 MvA_: Ik moest mijn periodieke wachtwoord wijzigen en dat heb ik gedaan na het inloggen op de VPN. Vervolgens kreeg ik de melding in Windows om te vergrendelen en met mijn nieuwe wachtwoord te ontgrendelen ... GREAT! Dat werkt gewoon in één keer!! Top!

_2017-11-06 WvI_: Weer een bezoekje aan local support. Mijn laptop ligt klaar, alleen zeggen ze dat er geen goedkeuring van een manager is. Bij Johan Borger langsgegaan, hij heeft de bevestiging in zijn mailbox. Hij zou bij local support (of de KSD?) langswandelen. Eind van de middag nogmaals langs local support, daar hebben ze hem nog niet gezien. Volgens mij wordt dit een test of het me lukt om vóór het eind van de testperiode een laptop te bemachtigen

_2017-11-07 WvI_: Er worden nu 2 verschillende omruil-scenario's onderkend: Enerzijds de mensen die gewoon een nieuw image willen laten inspoelen, anderzijds de mensen die tijdelijk 2 systemen naast elkaar willen draaien. Ik heb een laptop op mijn buro liggen!

_2017-11-14 WvI_: Na een weekje gebruik eigenlijk weinig te melden. Ik krijg af en toe een popup + geluid van Sophos Safeguard updates. Die zou ik liever niet hebben, maar verder lopen zowel de installatie als het gebruik van diverse programma's op rolletjes

_2017-11-15 WvI_: Vanmorgen mocht ik mijn wachtwoord wijzigen. Nieuw wachtwoord twee keer ingevuld, bij de eerste keer unlocken van mijn scherm vroeg Sophos SafeGuard om mijn oude wachtwoord, daarna niet meer. Liep geheel volgens verwachting (maar die verwachting moet misschien nog wel ergens gedocumenteerd worden)

## Bevindingen

_(bevindingenlijst, eventueel aangevuld met screenshots)_

_2017-10-31 MvA_ [nice to have]: Banners voor Sophos Safe Guard uitgezet, want die komen vaak voorbij, zowel dat het wel gelukt is, als dat het niet gelukt is...

_2017-10-31 MvA_ [should have]: `https://intranet.kadaster.nl` toegevoegd aan trusted sites voor intranet security zone (zie [wiki](http://wiki.cs.kadaster.nl/wiki/index.php/Wiki/Tips%26Tricks#Google_Chrome))

_2017-11-01 MvA_ [nice to have]: _Windows 10 Developer Mode_ geeft een error 'Geavanceerde ontwikkelfuncties niet gevonden in Windows Update'

<img src="screenshot-win10-dev-mode-error.png" />

_2017-11-20 MvA_ [should have]: Bureaubladachtergrond blijft niet wat is ingesteld nadat opnieuw wordt opgestart (of af- en aanmelden). Dit is niet altijd zo. Het is onduidelijk wanneer en of dat wel of niet blijft staan. Dit had ik ook met het Windows 7 profiel.

_2017-11-20 MvA_ [must have / met workaround: should have]: Desktop icon kan ik niet verwijderen (in dit geval Evernote)

> Workaround oplossing:
> 
> 1. Open een CMD met Administrator rechten
> 1. `C:`
> 1. `cd \Users\Public\Desktop`
> 1. `del Evernote.lnk`
> 
> Via de Verkenner werkt het ook als in `C:\Users\Public\Desktop` de icons verwijderd worden.

_2017-11-21 MvA_ [should have]: Virusscanner start standaard om 17.00u, precies het moment dat ik standaard naar huis ga en mijn laptop in slaapstand zet. Is dat handig? Is een ander tijdstip, bijv. 12.15u niet een beter moment? _(niet echt probleem, maar toch ... ;)_


## Bevindingen opgelost

_2017-10-26 MvA_ [solved]: <s>Bij het inloggen én bij ontgrendelen (!) krijg ik nog een rare melding over 'OLD password' ... maar dat is helemaal niet relevant. Door op 'Cancel' te klikken, kan ik wel gewoon door.</s> _(het lijkt er op dat dit werd veroorzaakt doordat er twee laptops op mijn naam stonden in het systeem. De oude laptop ontkoppeld en opnieuw Sophos sync acties gedaan (incl. opnieuw opstarten) heeft dit probleem verholpen)_

<img src="screenshot-logon-old-password.jpg" />

_2017-11-05 MvA_ [solved]: <s>Mail in MS Outlook is niet meer te openen en geeft een vreemde error:</s> _SOLVED: by Windows Update! (on 2017-11-06)_
<img src="screenshot-outlook-error.png" />

_2017-11-29 MvA_ [solved]: <s>Bij het verbinden of verbreken van de VPN krijg ik regelmatig (maar niet altijd) de melding: `RES ONE Workspace - You are not allowed to use this application.`</s> _(voorlopig opgelost. Er wordt op de achtergrond een script uitgevoerd onder onvoldoende rechten. Dat is uitgezet. Bij mij, Marc, lokaal is het script nog wel aanwezig op een of andere manier, maar goed, de melding blijft nu weg)_

<img src="screenshot-res-not-allowed.png">
