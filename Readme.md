# Anleitung

## Inhalt auf einer Seite verändern:
Gehe in den Ordner `docs`. 
Dort siehst du verschiedene Ordner für die Unterseiten und direkt den Text der auf der Hauptseite
[frooob.github.io/FFF](frooob.github.io/FFF) zu sehen ist. 
Gehe nun in den Ordner der jeweiligen Unterseite die du bearbeiten willst (zum Beispiel Links oder AGs).
In den Ordnern ist jeweils nur eine Datei namens `Readme.md`. Diese kannst du bearbeiten indem du oben rechts auf den kleinen Stift drückst. Dann kannst du den Inhalt von der Datei `Readme.md` direkt verändern. Siehe das Kapitel `Markdown` dafür wie die Datei sein sollte.

Wenn du die entsprechenden Änderungen vorgenommen hast gib unten eine kurze Beschreibung dessen was du verändert hast und auf `Commit changes`. Jetzt passiert einiges im Hintergrund und die Website wird aktualisiert. Das dauert ca. 1-2min. 

## Neue Seite erstellen
Um eine neue Seite zu erstellen kannst du in dem Ordner `docs` auf create File drücken. Dann musst du für den Namen der Datei `Seitenname/Readme.md` eingeben. Das erstellt einen Ordner `Seitenname` und in diesem eine Datei `Readme.md`. Diese Seite erscheint dann im Internet unter `www.frooob.github.io/FFF/Seitenname`.
Die Readme.md ist wieder eine Markdown Datei die du bearbeiten kannst wie oben beschrieben. Natürlich musst du auch irgendwo auf die Seite verlinken. Das machst du mit einen Link zu dem entsprechenden Ordner. z.B. `[Link zu Seitenname](www.frooob.github.io/FFF/Seitenname)`. 

### Markdown
Die Dateien die der Website zugrunde liegen sind sogenannte `markdown` Dateien. Du kannst zum Beispiel mit der Raute: `# Überschrif` eine Überschrift machen oder mit `##` eine kleinere Überschrift. (Oder `####`)
Oder mit `[KlickMich für google](www.google.com)` einen Link einfügen. Mit Markdown kann man so einige tolle Dinge ganz einfach machen, [https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet](HIER) siehst du eine kleine Übersicht. 

### Passwort ändern für AGs Links oder andere Seite mit Passwort schützen
Das könnte Dinge kaputt machen, halte gerne mit mir (Matthias) Rücksprache darüber wenn du eine neue Seite mit einem Passwort schützen möchstest. 
Das Passwort für die Seiten änderst du so: im Basisordner `/FFF/` gibt es eine Datei `deploy.sh` hier kannst du die Variable `PASSWORT` verändern. Momentan ist das Passwort `hhwunderbar`. Ein paar Zeilen weiter unten siehst du wie die Links und die AGs mit dem Passwort geschützt werden, im Grunde genommen kannst du das genau so auch für eine neue Seite machen.
