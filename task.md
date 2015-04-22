#Task 1.2
Die Header Dateien des Systems befinden sich in vordefinierten Ordnern und werden automatisch eingebunden wenn sie gebraucht werden. Sie müssen deswegen nicht weiter zusätzlich beachtet werden.

#Task 1.3
Sie ist in den Abhönigkeiten zu berücksichtigen. Siehe `makefile`.

#Task 1.5
Sollte eine Datei mit dem Namen `clean` oder `install` existieren, würden die Befehle nicht mehr ausgeführt, da `make` nicht feststellen kann, dass sich die dependencies nicht geändert haben. Somit wird von `make` nichts getan. Umgangen werden kann dies durch hinzufügen von `.PHONY:`. Siehe `makefile`

#Task 1.6
Siehe `makefile2`.